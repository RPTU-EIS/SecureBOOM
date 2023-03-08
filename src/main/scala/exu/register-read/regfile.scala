//******************************************************************************
// Copyright (c) 2013 - 2018, The Regents of the University of California (Regents).
// All Rights Reserved. See LICENSE and LICENSE.SiFive for license details.
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// Register File (Abstract class and Synthesizable RegFile)
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

package boom.exu

import scala.collection.mutable.ArrayBuffer

import chisel3._
import chisel3.util._

import freechips.rocketchip.config.Parameters

import boom.common._
import boom.util.{BoomCoreStringPrefix, IsOlder, GetNewBrMask}

//object UpdateTaint
// added by mofadiheh for taint
//{
////	def apply (old_taint: Bool, old_source: UInt(robAddrSz.W), write_ports : Vec(numWritePorts, Valid(new RegisterFileWritePort(maxPregSz, registerWidth))),
////							index: UInt(addrWidth.W), commits: CommitSignals, head_idx: UInt, pnr_idx: UInt): Bool = {
//	def apply (old_taint: Bool, old_source: UInt, write_ports : Vec[Valid(RegisterFileWritePort)],
//							index: UInt, commits: CommitSignals, head_idx: UInt, pnr_idx: UInt): Bool = {
//		val base_taint = WireInit(old_taint)
//		val base_source = WireInit(old_source)
//		val untaint = Wire(Bool())
//		val untaint_commit = WireInit(false.B)
//
//		for (wp <- write_ports) {
//    	when (wp.valid && wp.bits.addr === index) {
//				base_taint := wp.bits.taint
//				base_source := wp.bits.taint_source
//			}
//		}
//
//		for (w <- 0 until coreWidth) {
//			when (commit.valids(w) && commit.uops(w).rob_idx === base_source)
//			{
//				untaint_commit := true.B
//			}
//		}
//		when (IsOlder(base_source, pnr_idx, head_idx) || base_source === pnr_idx || untaint_commit )
//		{
//			untaint := true.B
//		}
//		.otherwise
//		{
//			untaint := false.B
//		}
//		return base_taint && !untaint
//	}
//}


/**
 * IO bundle for a register read port
 *
 * @param addrWidth size of register address in bits
 * @param dataWidth size of register in bits
 */
class RegisterFileReadPortIO(val addrWidth: Int, val dataWidth: Int)(implicit p: Parameters) extends BoomBundle
{
  val addr = Input(UInt(addrWidth.W))
  val data = Output(UInt(dataWidth.W))
  val taint = Output(Bool()) // added by mofadiheh for taint
  val yrot  = UInt(robAddrSz.W) // added by mofadiheh for taint
  val yrot_brmask = UInt(maxBrCount.W) // added by mofadiheh for taint - this is used for spectre model
}

/**
 * IO bundle for the register write port
 *
 * @param addrWidth size of register address in bits
 * @param dataWidth size of register in bits
 */
class RegisterFileWritePort(val addrWidth: Int, val dataWidth: Int)(implicit p: Parameters) extends BoomBundle
{
  val addr = UInt(addrWidth.W)
  val data = UInt(dataWidth.W)
  val taint = Bool() // added by mofadiheh for taint
  // required for untainting the registerfile
  val taint_source = UInt(robAddrSz.W) // this is for taint/untaint based on pnr
  val taint_source_brmask = UInt(maxBrCount.W) // this is used for spectre model
}

/**
 * Utility function to turn ExeUnitResps to match the regfile's WritePort I/Os.
 */
object WritePort
{
  def apply(enq: DecoupledIO[ExeUnitResp], addrWidth: Int, dataWidth: Int, rtype: UInt)
           (implicit p: Parameters): Valid[RegisterFileWritePort] = {
    val wport = Wire(Valid(new RegisterFileWritePort(addrWidth, dataWidth)))

    wport.valid     := enq.valid && enq.bits.uop.dst_rtype === rtype
    wport.bits.addr := enq.bits.uop.pdst
    wport.bits.data := enq.bits.data
    enq.ready       := true.B
    wport.bits.taint := enq.bits.uop.taint

    // added by mofadiheh for taint
    // we need to track source(root) of the taint for untainting
    // each instruction has a youngest root of taint (yrot) which is typically the source of the taint
    // for its result. however, for load instruction, the source of the taint for the result is
    // the load itself

    when(enq.bits.uop.uopc === uopLD && enq.bits.uop.br_mask =/= 0.U) {
      wport.bits.taint_source := enq.bits.uop.rob_idx // this is for taint/untaint based on pnr
      wport.bits.taint_source_brmask := enq.bits.uop.br_mask // this is used for spectre model
    } .otherwise {
      wport.bits.taint_source := enq.bits.uop.yrot    // this is for taint/untaint based on pnr
      wport.bits.taint_source_brmask := enq.bits.uop.yrot_brmask // this is used for spectre model
    }

    // ---

    wport
  }
}

/**
 * Register file abstract class
 *
 * @param numRegisters number of registers
 * @param numReadPorts number of read ports
 * @param numWritePorts number of write ports
 * @param registerWidth size of registers in bits
 * @param bypassableArray list of write ports from func units to the read port of the regfile
 */
abstract class RegisterFile(
                             numRegisters: Int,
                             numReadPorts: Int,
                             numWritePorts: Int,
                             registerWidth: Int,
                             bypassableArray: Seq[Boolean]) // which write ports can be bypassed to the read ports?
                           (implicit p: Parameters) extends BoomModule
{
  val io = IO(new BoomBundle {
    val read_ports = Vec(numReadPorts, new RegisterFileReadPortIO(maxPregSz, registerWidth))
    val write_ports = Flipped(Vec(numWritePorts, Valid(new RegisterFileWritePort(maxPregSz, registerWidth))))
    // we need pnr and head for untainting, this can be replaced with a separate port fed from ROB for untainting
    // added by mofadiheh for taint
    val rob_pnr_idx  = Input(UInt(robAddrSz.W))
    val rob_head_idx = Input(UInt(robAddrSz.W))
    // we need Commit signals since head and pnr are not enough! (for the case
    // that head jumps a rob id because of a double commit!)
    // added by mofadiheh for taint
    val commit = Input(new CommitSignals())
    val brupdate = Input(new BrUpdateInfo()) // spectre-model
  })

  private val rf_cost = (numReadPorts + numWritePorts) * (numReadPorts + 2*numWritePorts)
  private val type_str = if (registerWidth == fLen+1) "Floating Point" else "Integer"
  override def toString: String = BoomCoreStringPrefix(
    "==" + type_str + " Regfile==",
    "Num RF Read Ports     : " + numReadPorts,
    "Num RF Write Ports    : " + numWritePorts,
    "RF Cost (R+W)*(R+2W)  : " + rf_cost,
    "Bypassable Units      : " + bypassableArray)
}

/**
 * A synthesizable model of a Register File. You will likely want to blackbox this for more than modest port counts.
 *
 * @param numRegisters number of registers
 * @param numReadPorts number of read ports
 * @param numWritePorts number of write ports
 * @param registerWidth size of registers in bits
 * @param bypassableArray list of write ports from func units to the read port of the regfile
 */
class RegisterFileSynthesizable(
                                 numRegisters: Int,
                                 numReadPorts: Int,
                                 numWritePorts: Int,
                                 registerWidth: Int,
                                 bypassableArray: Seq[Boolean])
                               (implicit p: Parameters)
  extends RegisterFile(numRegisters, numReadPorts, numWritePorts, registerWidth, bypassableArray)
{
  // --------------------------------------------------------------

  val regfile = Mem(numRegisters, UInt(registerWidth.W))

  // --------------------------------------------------------------
  // taint and untaint logic
  // added by mofadiheh for taint
  val taintfile = Reg(Vec(numRegisters, Bool()))

  val taint_sources = Reg(Vec(numRegisters, UInt(robAddrSz.W)))

  val taint_sources_brmask = Reg(Vec(numRegisters, UInt(maxBrCount.W))) // spectre-model

  val next_taint = WireInit(taintfile)
  val next_source = WireInit(taint_sources)
  val next_source_brmask = WireInit(taint_sources_brmask) // spectre-model

  for (i <- 0 until numRegisters){
    val base_taint = WireInit(taintfile(i))
    val base_source = WireInit(taint_sources(i))
    val base_source_brmask = WireInit(taint_sources_brmask(i)) // spectre-model

    val untaint = Wire(Bool())
    val untaint_commit = WireInit(false.B)

    for (wp <- io.write_ports) {
	    when (wp.valid && wp.bits.addr === i.asUInt) {
  	    base_taint := wp.bits.taint
    	  base_source := wp.bits.taint_source
      	base_source_brmask := wp.bits.taint_source_brmask // spectre-model
    	}
  	}

    // for futuristic
    //for (w <- 0 until coreWidth) {
    //	when (io.commit.valids(w) && io.commit.uops(w).rob_idx === base_source)
    //	{
    //		untaint_commit := true.B
    //	}
    //}
    //when (IsOlder(base_source, io.rob_pnr_idx, io.rob_head_idx) || base_source === io.rob_pnr_idx || untaint_commit )
    //{
    //	untaint := true.B
    //}
    //.otherwise
    //{
    //	untaint := false.B
    //}
    //next_taint(i) := base_taint && !untaint
    //next_source(i) := base_source

    // for spectre model
    next_source(i) := base_source
    next_source_brmask(i) := GetNewBrMask(io.brupdate, base_source_brmask)
    when (next_source_brmask(i) === 0.U)
    {
      untaint := true.B
    } .otherwise
    {
      untaint := false.B
    }
    next_taint(i) := base_taint && !untaint

    taintfile(i) := next_taint(i)
    taint_sources(i) := next_source(i)
    taint_sources_brmask(i) := next_source_brmask(i)

  }

  // modified by mofadiheh - merged with previous loop for simplicity
  //for (i <- 0 until numRegisters){
  //	taintfile(i) := next_taint(i)
  //	taint_sources(i) := next_source(i)
  //}

  // --------------------------------------------------------------
  // Read ports.

  val read_data = Wire(Vec(numReadPorts, UInt(registerWidth.W))) // added by mofadiheh for taint
  val read_taint = Wire(Vec(numReadPorts, Bool())) // added by mofadiheh for taint
  val read_taint_source = Wire(Vec(numReadPorts, UInt(robAddrSz.W))) // added by mofadiheh for taint
  val read_taint_source_brmask = Wire(Vec(numReadPorts, UInt(maxBrCount.W))) // added by mofadiheh for taint - spectre model

  // Register the read port addresses to give a full cycle to the RegisterRead Stage (if desired).
  val read_addrs = io.read_ports.map(p => RegNext(p.addr))

  for (i <- 0 until numReadPorts) {
    read_data(i) := regfile(read_addrs(i))



    // added by mofadiheh for taint
		// we need to also take the current clock cycle untaint into the account,
		// but only for direct reads and not bypasses, since a in a bypass if the source is already
		// older than pnr, the taint will become zero through the BrUpdate broadcast logic

    // read_taint(i) := next_taint(read_addrs(i)) // we should use next taint only if it is bypassable, that is handled separately
		
		read_taint(i) := taintfile(read_addrs(i)) && ( GetNewBrMask(io.brupdate,taint_sources_brmask(read_addrs(i))) =/= 0.U )    

		read_taint_source(i) := taint_sources(read_addrs(i))
    read_taint_source_brmask(i) := GetNewBrMask(io.brupdate,taint_sources_brmask(read_addrs(i))) // for spectre-model
  }

  // --------------------------------------------------------------
  // Bypass out of the ALU's write ports.
  // We are assuming we cannot bypass a writer to a reader within the regfile memory
  // for a write that occurs at the end of cycle S1 and a read that returns data on cycle S1.
  // But since these bypasses are expensive, and not all write ports need to bypass their data,
  // only perform the w->r bypass on a select number of write ports.

  require (bypassableArray.length == io.write_ports.length)

  if (bypassableArray.reduce(_||_)) {
    val bypassable_wports = ArrayBuffer[Valid[RegisterFileWritePort]]()
    io.write_ports zip bypassableArray map { case (wport, b) => if (b) { bypassable_wports += wport} }

    for (i <- 0 until numReadPorts) {
      val bypass_ens = bypassable_wports.map(x => x.valid &&
        x.bits.addr === read_addrs(i))

      val bypass_data = Mux1H(VecInit(bypass_ens), VecInit(bypassable_wports.map(_.bits.data)))

      val bypass_taint = Mux1H(VecInit(bypass_ens), VecInit(bypassable_wports.map(_.bits.taint))) // added by mofadiheh for taint

      io.read_ports(i).data := Mux(bypass_ens.reduce(_|_), bypass_data, read_data(i))

	  	// In next_taint we take the incomming write transaction into the
		  // account so for a bypass we should take the next_taint and next_source 
      // added by mofadiheh for taint
      io.read_ports(i).taint := Mux(bypass_ens.reduce(_|_), next_taint(read_addrs(i)), read_taint(i))
      io.read_ports(i).yrot  := Mux(bypass_ens.reduce(_|_), next_source(read_addrs(i)), read_taint_source(i))
      io.read_ports(i).yrot_brmask := Mux(bypass_ens.reduce(_|_), next_source_brmask(read_addrs(i)), read_taint_source_brmask(i)) // for spectre-model
    }
  } else {
    for (i <- 0 until numReadPorts) {
      io.read_ports(i).data := read_data(i)

      io.read_ports(i).taint := read_taint(i) // added by mofadiheh for taint
      io.read_ports(i).yrot  := read_taint_source(i) // added by mofadiheh for taint
      io.read_ports(i).yrot_brmask := read_taint_source_brmask(i) // for spectre-model
    }
  }

  // --------------------------------------------------------------
  // Write ports.

  for (wport <- io.write_ports) {
    when (wport.valid) {
      regfile(wport.bits.addr) := wport.bits.data
      //taintfile(wport.bits.addr) := wport.bits.taint
      //taint_sources(wport.bits.addr) := wport.bits.taint_source
    }
  }

  // ensure there is only 1 writer per register (unless to preg0)
  if (numWritePorts > 1) {
    for (i <- 0 until (numWritePorts - 1)) {
      for (j <- (i + 1) until numWritePorts) {
        assert(!io.write_ports(i).valid ||
          !io.write_ports(j).valid ||
          (io.write_ports(i).bits.addr =/= io.write_ports(j).bits.addr) ||
          (io.write_ports(i).bits.addr === 0.U), // note: you only have to check one here
          "[regfile] too many writers a register")
      }
    }
  }

  // added by mofadiheh for taint
  // Untaint logic: here we use the most accurate/least efficient approach, compare each source with pnr at each clock cycle.
  // more reasonable approach should be that the rob untaint registers one by one through a separate port
  //	for (i <- 0 until (numRegisters - 1)) {
  //		when( IsOlder(taint_sources(i), io.rob_pnr_idx, io.rob_head_idx) || taint_sources(i) === io.rob_pnr_idx ) {
  //			taintfile(i) := false.B
  //		}
  //	}

}

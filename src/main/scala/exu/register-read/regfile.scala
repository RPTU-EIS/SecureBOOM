//******************************************************************************
// Copyright (c) 2013 - 2018, The Regents of the University of California (Regents).
// All Rights Reserved. See LICENSE and LICENSE.SiFive for license details.
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// Register File (Abstract class and Synthesizable RegFile)
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//
// Additional source code by Tobias Jauch and Mohammad Rahmani Fadiheh: 29/06/2022 (Meltdown Fix + STT)

package boom.exu

import scala.collection.mutable.ArrayBuffer

import chisel3._
import chisel3.util._

import freechips.rocketchip.config.Parameters

import boom.common._
import boom.util.{BoomCoreStringPrefix, IsOlder}

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
  // this is for taint/untaint based on pnr
  val taint_source = UInt(robAddrSz.W)
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

	when(enq.bits.uop.uopc === uopLD) {
		wport.bits.taint_source := enq.bits.uop.rob_idx
	} .otherwise {
		wport.bits.taint_source := enq.bits.uop.yrot
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

	val next_taint = WireInit(taintfile)
	val next_source = WireInit(taint_sources)

  val bypassable_wports_taint_update = ArrayBuffer[Valid[RegisterFileWritePort]]()
  io.write_ports zip bypassableArray map { case (wport, b) => if (b) { bypassable_wports_taint_update += wport} }

	for (i <- 0 until numRegisters){
		val base_taint = WireInit(taintfile(i))
		val base_source = WireInit(taint_sources(i))
		val untaint = Wire(Bool())
		val untaint_commit = WireInit(false.B)

		if (bypassableArray.reduce(_||_)) {
//			for (wp <- io.write_ports) {
			for (wp <- bypassable_wports_taint_update) {
	    	when (wp.valid && wp.bits.addr === i.asUInt) {
					base_taint := wp.bits.taint
					base_source := wp.bits.taint_source
				}
			}
		}

		for (w <- 0 until coreWidth) {
			when (io.commit.valids(w) && io.commit.uops(w).rob_idx === base_source)
			{
				untaint_commit := true.B
			}
		}
		when (IsOlder(base_source, io.rob_pnr_idx, io.rob_head_idx) || base_source === io.rob_pnr_idx || untaint_commit )
		{
			untaint := true.B
		}
		.otherwise
		{
			untaint := false.B
		}
		next_taint(i) := base_taint && !untaint
		next_source(i) := base_source
	}

	for (i <- 0 until numRegisters){
		taintfile(i) := next_taint(i)
		taint_sources(i) := next_source(i)
	}
  // --------------------------------------------------------------
  // Read ports.

  val read_data = Wire(Vec(numReadPorts, UInt(registerWidth.W))) // added by mofadiheh for taint
  val read_taint = Wire(Vec(numReadPorts, Bool())) // added by mofadiheh for taint
  val read_taint_source = Wire(Vec(numReadPorts, UInt(robAddrSz.W))) // added by mofadiheh for taint

  // Register the read port addresses to give a full cycle to the RegisterRead Stage (if desired).
  val read_addrs = io.read_ports.map(p => RegNext(p.addr))

  for (i <- 0 until numReadPorts) {
    read_data(i) := regfile(read_addrs(i))

    // added by mofadiheh for taint
	// we need to also take the current clock cycle untaint into the account,
	// but only for direct reads and not bypasses, since a in a bypass if the source is already
	// older than pnr, the taint will become zero through the BrUpdate broadcast logic
	read_taint(i) := next_taint(read_addrs(i))
    //read_taint(i) := taintfile(read_addrs(i)) && (!IsOlder(taint_sources(read_addrs(i)), io.rob_pnr_idx, io.rob_head_idx) && taint_sources(read_addrs(i)) =/= io.rob_pnr_idx)
	read_taint_source(i) := next_source(read_addrs(i))
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

	  // In read_taint we take the incomming write transaction into the
	  // account so a bypass is autoamtically considered
	  // added by mofadiheh for taint
	  io.read_ports(i).taint := read_taint(i) // Mux(bypass_ens.reduce(_|_), bypass_taint, read_taint(i))
	  io.read_ports(i).yrot  := read_taint_source(i)
    }
  } else {
    for (i <- 0 until numReadPorts) {
      io.read_ports(i).data := read_data(i)

	  io.read_ports(i).taint := read_taint(i) // added by mofadiheh for taint
	  io.read_ports(i).yrot  := read_taint_source(i) // added by mofadiheh for taint
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

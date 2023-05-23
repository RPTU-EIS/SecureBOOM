//******************************************************************************
// Copyright (c) 2012 - 2018, The Regents of the University of California (Regents).
// All Rights Reserved. See LICENSE and LICENSE.SiFive for license details.
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// RISCV Processor Register Read
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//
// Additional source code by Tobias Jauch and Mohammad Rahmani Fadiheh: 29/06/2022 (SecureBOOM)

package boom.exu

import chisel3._
import chisel3.util._

import freechips.rocketchip.config.Parameters

import boom.common._
import boom.util._

/**
 * Handle the register read and bypass network for the OoO backend
 * interfaces with the issue window on the enqueue side, and the execution
 * pipelines on the dequeue side.
 *
 * @param issueWidth total issue width from all issue queues
 * @param supportedUnitsArray seq of SupportedFuncUnits classes indicating what the functional units do
 * @param numTotalReadPorts number of read ports
 * @param numReadPortsArray execution units read port sequence
 * @param numTotalBypassPorts number of bypass ports out of the execution units
 * @param registerWidth size of register in bits
 */
class RegisterRead(
  issueWidth: Int,
  supportedUnitsArray: Seq[SupportedFuncUnits],
  numTotalReadPorts: Int,
  numReadPortsArray: Seq[Int],
                        // each exe_unit must tell us how many max
                        // operands it can accept (the sum should equal
                        // numTotalReadPorts)
  numTotalBypassPorts: Int,
  numTotalPredBypassPorts: Int,
  registerWidth: Int,
  isInteger: Bool // added by Mo, this param is added to distinguish between FP register read and int register read.
  // num of read ports can also be used because FP has 3 read ports in MediumBoomConfig but the param is added to be safe for other configs
)(implicit p: Parameters) extends BoomModule
{
  val io = IO(new Bundle {
    // issued micro-ops
    val iss_valids = Input(Vec(issueWidth, Bool()))
    val iss_uops   = Input(Vec(issueWidth, new MicroOp()))

    // interface with register file's read ports
    val rf_read_ports = Flipped(Vec(numTotalReadPorts, new RegisterFileReadPortIO(maxPregSz, registerWidth)))
    val prf_read_ports = Flipped(Vec(issueWidth, new RegisterFileReadPortIO(log2Ceil(ftqSz), 1)))

    val bypass = Input(Vec(numTotalBypassPorts, Valid(new ExeUnitResp(registerWidth))))
    val pred_bypass = Input(Vec(numTotalPredBypassPorts, Valid(new ExeUnitResp(1))))

    // send micro-ops to the execution pipelines
    val exe_reqs = Vec(issueWidth, (new DecoupledIO(new FuncUnitReq(registerWidth))))

    val kill   = Input(Bool())
    val brupdate = Input(new BrUpdateInfo())
  })

  val rrd_valids       = Wire(Vec(issueWidth, Bool()))
  val rrd_uops         = Wire(Vec(issueWidth, new MicroOp()))

  val exe_reg_valids   = RegInit(VecInit(Seq.fill(issueWidth) { false.B }))
  val exe_reg_uops     = Reg(Vec(issueWidth, new MicroOp()))
  val exe_reg_rs1_data = Reg(Vec(issueWidth, Bits(registerWidth.W)))
  val exe_reg_rs2_data = Reg(Vec(issueWidth, Bits(registerWidth.W)))
  val exe_reg_rs3_data = Reg(Vec(issueWidth, Bits(registerWidth.W)))
  val exe_reg_pred_data = Reg(Vec(issueWidth, Bool()))

//	val exe_reg_rs1_taint = Reg(Vec(issueWidth, Bool()))
//	val exe_reg_rs2_taint = Reg(Vec(issueWidth, Bool()))
//	val exe_reg_rs3_taint = Reg(Vec(issueWidth, Bool()))
	val exe_reg_taint = Reg(Vec(issueWidth, Bool())) // added by mofadiheh for taint
	val exe_reg_yrot  = Reg(Vec(issueWidth, UInt(robAddrSz.W))) // added by mofadiheh for taint

  //-------------------------------------------------------------
  // hook up inputs

  for (w <- 0 until issueWidth) {
    val rrd_decode_unit = Module(new RegisterReadDecode(supportedUnitsArray(w)))
    rrd_decode_unit.io.iss_valid := io.iss_valids(w)
    rrd_decode_unit.io.iss_uop   := io.iss_uops(w)

    rrd_valids(w) := RegNext(rrd_decode_unit.io.rrd_valid &&
                !IsKilledByBranch(io.brupdate, rrd_decode_unit.io.rrd_uop))
    rrd_uops(w)   := RegNext(GetNewUopAndBrMask(rrd_decode_unit.io.rrd_uop, io.brupdate))
  }

  //-------------------------------------------------------------
  // read ports

  require (numTotalReadPorts == numReadPortsArray.reduce(_+_))

  val rrd_rs1_data   = Wire(Vec(issueWidth, Bits(registerWidth.W)))
  val rrd_rs2_data   = Wire(Vec(issueWidth, Bits(registerWidth.W)))
  val rrd_rs3_data   = Wire(Vec(issueWidth, Bits(registerWidth.W)))
  rrd_rs1_data := DontCare
  rrd_rs2_data := DontCare
  rrd_rs3_data := DontCare


  // added by mofadiheh for taint
  val rrd_rs1_taint   = Wire(Vec(issueWidth, Bool()))
  val rrd_rs2_taint   = Wire(Vec(issueWidth, Bool()))
  val rrd_rs3_taint   = Wire(Vec(issueWidth, Bool()))
  rrd_rs1_taint := DontCare
  rrd_rs2_taint := DontCare
  rrd_rs3_taint := DontCare

  val rrd_rs1_yrot   = Wire(Vec(issueWidth, UInt(robAddrSz.W)))
  val rrd_rs2_yrot   = Wire(Vec(issueWidth, UInt(robAddrSz.W)))
  val rrd_rs3_yrot   = Wire(Vec(issueWidth, UInt(robAddrSz.W)))
  rrd_rs1_yrot := DontCare
  rrd_rs2_yrot := DontCare
  rrd_rs3_yrot := DontCare


  val rrd_pred_data  = Wire(Vec(issueWidth, Bool()))
  rrd_pred_data := DontCare

  io.prf_read_ports := DontCare

  var idx = 0 // index into flattened read_ports array
  for (w <- 0 until issueWidth) {
    val numReadPorts = numReadPortsArray(w)

    // NOTE:
    // rrdLatency==1, we need to send read address at end of ISS stage,
    //    in order to get read data back at end of RRD stage.

    val rs1_addr = io.iss_uops(w).prs1
    val rs2_addr = io.iss_uops(w).prs2
    val rs3_addr = io.iss_uops(w).prs3
    val pred_addr = io.iss_uops(w).ppred

    if (numReadPorts > 0) io.rf_read_ports(idx+0).addr := rs1_addr
    if (numReadPorts > 1) io.rf_read_ports(idx+1).addr := rs2_addr
    if (numReadPorts > 2) io.rf_read_ports(idx+2).addr := rs3_addr

    if (enableSFBOpt) io.prf_read_ports(w).addr := pred_addr

    if (numReadPorts > 0) rrd_rs1_data(w) := Mux(RegNext(rs1_addr === 0.U), 0.U, io.rf_read_ports(idx+0).data)
    if (numReadPorts > 1) rrd_rs2_data(w) := Mux(RegNext(rs2_addr === 0.U), 0.U, io.rf_read_ports(idx+1).data)
    if (numReadPorts > 2) rrd_rs3_data(w) := Mux(RegNext(rs3_addr === 0.U), 0.U, io.rf_read_ports(idx+2).data)

  // added by mofadiheh for taint
    if (numReadPorts > 0) rrd_rs1_taint(w) := Mux(RegNext(rs1_addr === 0.U), 0.U, io.rf_read_ports(idx+0).taint)
    if (numReadPorts > 1) rrd_rs2_taint(w) := Mux(RegNext(rs2_addr === 0.U), 0.U, io.rf_read_ports(idx+1).taint)
    if (numReadPorts > 2) rrd_rs3_taint(w) := Mux(RegNext(rs3_addr === 0.U), 0.U, io.rf_read_ports(idx+2).taint)
    if (numReadPorts > 0) rrd_rs1_yrot(w) := Mux(RegNext(rs1_addr === 0.U), 0.U, io.rf_read_ports(idx+0).yrot)
    if (numReadPorts > 1) rrd_rs2_yrot(w) := Mux(RegNext(rs2_addr === 0.U), 0.U, io.rf_read_ports(idx+1).yrot)
    if (numReadPorts > 2) rrd_rs3_yrot(w) := Mux(RegNext(rs3_addr === 0.U), 0.U, io.rf_read_ports(idx+2).yrot)



    if (enableSFBOpt) rrd_pred_data(w) := Mux(RegNext(io.iss_uops(w).is_sfb_shadow), io.prf_read_ports(w).data, false.B)

    val rrd_kill = io.kill || IsKilledByBranch(io.brupdate, rrd_uops(w))

    exe_reg_valids(w) := Mux(rrd_kill, false.B, rrd_valids(w))
    // TODO use only the valids signal, don't require us to set nullUop
    exe_reg_uops(w)   := Mux(rrd_kill, NullMicroOp, rrd_uops(w))

    exe_reg_uops(w).br_mask := GetNewBrMask(io.brupdate, rrd_uops(w))

	// the implicit taint must be updated too
	// added by mofadiheh for taint
	exe_reg_uops(w).taint   := GetNewImplicitTaint(io.brupdate, rrd_uops(w))

    idx += numReadPorts
  }

  //-------------------------------------------------------------
  //-------------------------------------------------------------
  // BYPASS MUXES -----------------------------------------------
  // performed at the end of the register read stage

  // NOTES: this code is fairly hard-coded. Sorry.
  // ASSUMPTIONS:
  //    - rs3 is used for FPU ops which are NOT bypassed (so don't check
  //       them!).
  //    - only bypass integer registers.

  val bypassed_rs1_data = Wire(Vec(issueWidth, Bits(registerWidth.W)))
  val bypassed_rs2_data = Wire(Vec(issueWidth, Bits(registerWidth.W)))

  // added by mofadiheh for taint
  val bypassed_rs1_taint = Wire(Vec(issueWidth, Bool()))
  val bypassed_rs2_taint = Wire(Vec(issueWidth, Bool()))
  val bypassed_rs1_yrot = Wire(Vec(issueWidth, UInt(robAddrSz.W)))
  val bypassed_rs2_yrot = Wire(Vec(issueWidth, UInt(robAddrSz.W)))

  val bypassed_pred_data = Wire(Vec(issueWidth, Bool()))
  bypassed_pred_data := DontCare

  for (w <- 0 until issueWidth) {
    val numReadPorts = numReadPortsArray(w)
    var rs1_cases = Array((false.B, 0.U(registerWidth.W)))
    var rs2_cases = Array((false.B, 0.U(registerWidth.W)))

  // added by mofadiheh for taint
    var rs1_taint_cases = Array((false.B, false.B))
    var rs2_taint_cases = Array((false.B, false.B))
    var rs1_yrot_cases = Array((false.B, 0.U(robAddrSz.W)))
    var rs2_yrot_cases = Array((false.B, 0.U(robAddrSz.W)))

    var pred_cases = Array((false.B, 0.U(1.W)))

    val prs1       = rrd_uops(w).prs1
    val lrs1_rtype = rrd_uops(w).lrs1_rtype
    val prs2       = rrd_uops(w).prs2
    val lrs2_rtype = rrd_uops(w).lrs2_rtype
    val ppred      = rrd_uops(w).ppred

    for (b <- 0 until numTotalBypassPorts)
    {
      val bypass = io.bypass(b)
      // can't use "io.bypass.valid(b) since it would create a combinational loop on branch kills"
      rs1_cases ++= Array((bypass.valid && (prs1 === bypass.bits.uop.pdst) && bypass.bits.uop.rf_wen
        && bypass.bits.uop.dst_rtype === RT_FIX && lrs1_rtype === RT_FIX && (prs1 =/= 0.U), bypass.bits.data))
      rs2_cases ++= Array((bypass.valid && (prs2 === bypass.bits.uop.pdst) && bypass.bits.uop.rf_wen
        && bypass.bits.uop.dst_rtype === RT_FIX && lrs2_rtype === RT_FIX && (prs2 =/= 0.U), bypass.bits.data))

 // added by mofadiheh for taint
      // can't use "io.bypass.valid(b) since it would create a combinational loop on branch kills"
      rs1_taint_cases ++= Array((bypass.valid && (prs1 === bypass.bits.uop.pdst) && bypass.bits.uop.rf_wen
        && bypass.bits.uop.dst_rtype === RT_FIX && lrs1_rtype === RT_FIX && (prs1 =/= 0.U), bypass.bits.uop.taint))
      rs2_taint_cases ++= Array((bypass.valid && (prs2 === bypass.bits.uop.pdst) && bypass.bits.uop.rf_wen
        && bypass.bits.uop.dst_rtype === RT_FIX && lrs2_rtype === RT_FIX && (prs2 =/= 0.U), bypass.bits.uop.taint))

      // can't use "io.bypass.valid(b) since it would create a combinational loop on branch kills"
      rs1_yrot_cases ++= Array((bypass.valid && (prs1 === bypass.bits.uop.pdst) && bypass.bits.uop.rf_wen
        && bypass.bits.uop.dst_rtype === RT_FIX && lrs1_rtype === RT_FIX && (prs1 =/= 0.U), bypass.bits.uop.yrot))
      rs2_yrot_cases ++= Array((bypass.valid && (prs2 === bypass.bits.uop.pdst) && bypass.bits.uop.rf_wen
        && bypass.bits.uop.dst_rtype === RT_FIX && lrs2_rtype === RT_FIX && (prs2 =/= 0.U), bypass.bits.uop.yrot))

    }

    for (b <- 0 until numTotalPredBypassPorts)
    {
      val bypass = io.pred_bypass(b)
      pred_cases ++= Array((bypass.valid && (ppred === bypass.bits.uop.pdst) && bypass.bits.uop.is_sfb_br, bypass.bits.data))
    }

    if (numReadPorts > 0) bypassed_rs1_data(w)  := MuxCase(rrd_rs1_data(w), rs1_cases)
    if (numReadPorts > 1) bypassed_rs2_data(w)  := MuxCase(rrd_rs2_data(w), rs2_cases)

  // added by mofadiheh for taint
    if (numReadPorts > 0) bypassed_rs1_taint(w)  := MuxCase(rrd_rs1_taint(w), rs1_taint_cases)
    if (numReadPorts > 1) bypassed_rs2_taint(w)  := MuxCase(rrd_rs2_taint(w), rs2_taint_cases)
    if (numReadPorts > 0) bypassed_rs1_yrot(w)  := MuxCase(rrd_rs1_yrot(w), rs1_yrot_cases)
    if (numReadPorts > 1) bypassed_rs2_yrot(w)  := MuxCase(rrd_rs2_yrot(w), rs2_yrot_cases)


    if (enableSFBOpt)     bypassed_pred_data(w) := MuxCase(rrd_pred_data(w), pred_cases)
  }

  //-------------------------------------------------------------
  //-------------------------------------------------------------
  // **** Execute Stage ****
  //-------------------------------------------------------------
  //-------------------------------------------------------------

  for (w <- 0 until issueWidth) {
    val numReadPorts = numReadPortsArray(w)
    if (numReadPorts > 0) exe_reg_rs1_data(w) := bypassed_rs1_data(w)
    if (numReadPorts > 1) exe_reg_rs2_data(w) := bypassed_rs2_data(w)
    if (numReadPorts > 2) exe_reg_rs3_data(w) := rrd_rs3_data(w)

//    if (numReadPorts > 0) exe_reg_rs1_taint(w) := bypassed_rs1_taint(w)
//    if (numReadPorts > 1) exe_reg_rs2_taint(w) := bypassed_rs2_taint(w)
//    if (numReadPorts > 2) exe_reg_rs3_taint(w) := rrd_rs3_taint(w)


		// taint must be propagated from regfile to functional unit
		// added by mofadiheh for taint
		// Should we have a taint clear here too?
		//if (isInteger == true.B) {
		if (numReadPorts != 3) {

			if (numReadPorts == 1) exe_reg_taint(w)  := ( bypassed_rs1_taint(w) && rrd_uops(w).lrs1_rtype === RT_FIX ) || rrd_uops(w).taint
			if (numReadPorts == 2) exe_reg_taint(w)  := ( bypassed_rs1_taint(w) && rrd_uops(w).lrs1_rtype === RT_FIX ) ||
	  																					 	  ( bypassed_rs2_taint(w) && rrd_uops(w).lrs2_rtype === RT_FIX ) || rrd_uops(w).taint
// numReadPorts == 3 is only for FP
//			if (numReadPorts == 3) exe_reg_taint(w)  := ( bypassed_rs1_taint(w) && rrd_uops(w).lrs1_rtype === RT_FIX ) ||
//																							 		( bypassed_rs2_taint(w) && rrd_uops(w).lrs2_rtype === RT_FIX ) ||
//																							 		( rrd_rs3_taint(w)      && rrd_uops(w).frs3_en ) 				       || rrd_uops(w).taint 
		}	
		else {
			if (numReadPorts == 1) exe_reg_taint(w)  := ( bypassed_rs1_taint(w) && rrd_uops(w).lrs1_rtype === RT_FLT ) || rrd_uops(w).taint
			if (numReadPorts == 2) exe_reg_taint(w)  := ( bypassed_rs1_taint(w) && rrd_uops(w).lrs1_rtype === RT_FLT ) ||
	  																					 	  ( bypassed_rs2_taint(w) && rrd_uops(w).lrs2_rtype === RT_FLT ) || rrd_uops(w).taint
			if (numReadPorts == 3) exe_reg_taint(w)  := ( bypassed_rs1_taint(w) && rrd_uops(w).lrs1_rtype === RT_FLT ) ||
																							 		( bypassed_rs2_taint(w) && rrd_uops(w).lrs2_rtype === RT_FLT ) ||
																							 		( rrd_rs3_taint(w)      && rrd_uops(w).frs3_en ) 				       || rrd_uops(w).taint

		}


	  //-------------------------------------------------------------
		// setting the yrot: it should always select the youngest yrot among the tainted operands
		// for the case of bypass, we should have special condition if you bypass load result? it seems only ALU outputs are bypassable so no problem
		// set the yrot for the exe stage
		// For this part we assume we have no implicit taint (for the taint
		// propagation itself we alse consider implicit taint by propagating the
		// taint that comes from earlier stages).
		// Without implicit taint, the only source of yrot is register file and if
		// operands are not tainted, yrot is dont care

		//if (isInteger == true.B) {
		if (numReadPorts != 3) {
	
			if (numReadPorts == 1) {
				exe_reg_yrot(w)  := bypassed_rs1_yrot(w)
			}
			if (numReadPorts == 2) {
	
				when(bypassed_rs1_taint(w) === true.B && bypassed_rs2_taint(w) === true.B && rrd_uops(w).lrs1_rtype === RT_FIX && rrd_uops(w).lrs2_rtype === RT_FIX) {
				// if both operands are tainted and both are selected: yrot is the
				// youngest among them
	
					when(IsOlder(bypassed_rs1_yrot(w), bypassed_rs2_yrot(w), io.brupdate.b1.rob_head_idx)) { // if rs1_yrot is older then take rs2_yrot
						exe_reg_yrot(w) := bypassed_rs2_yrot(w)
					}.otherwise {
						exe_reg_yrot(w) := bypassed_rs1_yrot(w)
					}
	
				}
	
				.elsewhen(bypassed_rs2_taint(w) === true.B && rrd_uops(w).lrs2_rtype === RT_FIX){
				// now if rs2 is selected and tainted and rs1 is either not selected or not
				// tainted, then take rs2_yrot
					exe_reg_yrot(w) := bypassed_rs2_yrot(w)
				}
	
				.otherwise {
				// in all other cases take rs1_yrot
				// note that it also includes all the cases in which yrot is dont care
					exe_reg_yrot(w) := bypassed_rs1_yrot(w)
				}
			}
		}
		else {
			if (numReadPorts == 1) {
				exe_reg_yrot(w)  := bypassed_rs1_yrot(w)
			}
			if (numReadPorts == 2) {
	
				when(bypassed_rs1_taint(w) === true.B && bypassed_rs2_taint(w) === true.B && rrd_uops(w).lrs1_rtype === RT_FLT && rrd_uops(w).lrs2_rtype === RT_FLT) {
				// if both operands are tainted and both are selected: yrot is the
				// youngest among them
	
					when(IsOlder(bypassed_rs1_yrot(w), bypassed_rs2_yrot(w), io.brupdate.b1.rob_head_idx)) { // if rs1_yrot is older then take rs2_yrot
						exe_reg_yrot(w) := bypassed_rs2_yrot(w)
					}.otherwise {
						exe_reg_yrot(w) := bypassed_rs1_yrot(w)
					}
	
				}
	
				.elsewhen(bypassed_rs2_taint(w) === true.B && rrd_uops(w).lrs2_rtype === RT_FLT){
				// now if rs2 is selected and tainted and rs1 is either not selected or not
				// tainted, then take rs2_yrot
					exe_reg_yrot(w) := bypassed_rs2_yrot(w)
				}
	
				.otherwise {
				// in all other cases take rs1_yrot
				// note that it also includes all the cases in which yrot is dont care
					exe_reg_yrot(w) := bypassed_rs1_yrot(w)
				}
	
			}
			if (numReadPorts == 3) {
	
				when(rrd_uops(w).frs3_en && rrd_rs3_taint(w)) {
	
					when(bypassed_rs1_taint(w) === true.B && bypassed_rs2_taint(w) === true.B && rrd_uops(w).lrs1_rtype === RT_FLT && rrd_uops(w).lrs2_rtype === RT_FLT ) {
					// if all three operands are tainted and all are selected: yrot is the
					// youngest among them
	
						when(IsOlder(bypassed_rs2_yrot(w), bypassed_rs1_yrot(w), io.brupdate.b1.rob_head_idx) &&
									IsOlder(rrd_rs3_yrot(w), bypassed_rs1_yrot(w), io.brupdate.b1.rob_head_idx)) { // if rs1_yrot is younger than r2_yrot and rs3_yrot then take rs1_yrot
							exe_reg_yrot(w) := bypassed_rs1_yrot(w)
						}
	
						.elsewhen(IsOlder(bypassed_rs1_yrot(w), bypassed_rs2_yrot(w), io.brupdate.b1.rob_head_idx) &&
									IsOlder(rrd_rs3_yrot(w), bypassed_rs2_yrot(w), io.brupdate.b1.rob_head_idx)) { // if rs2_yrot is younger than r1_yrot and rs3_yrot then take rs2_yrot
							exe_reg_yrot(w) := bypassed_rs2_yrot(w)
						}
						.elsewhen(bypassed_rs1_yrot(w) === bypassed_rs2_yrot(w) && 
												!IsOlder(bypassed_rs1_yrot(w), rrd_rs3_yrot(w), io.brupdate.b1.rob_head_idx)){
							exe_reg_yrot(w) := bypassed_rs1_yrot(w)
						}
						.otherwise {
							exe_reg_yrot(w) := rrd_rs3_yrot(w)
						}
	
					}
	
					.elsewhen(bypassed_rs2_taint(w) === true.B && rrd_uops(w).lrs2_rtype === RT_FLT){
					// now if rs2 is selected and tainted and rs1 is either not selected or not
					// tainted, then take the younger between rs2_yrot rs3_yrot
	
						when(IsOlder(rrd_rs3_yrot(w), bypassed_rs2_yrot(w), io.brupdate.b1.rob_head_idx)) { // if rs2_yrot is younger than rs3_yrot then take rs2_yrot
							exe_reg_yrot(w) := bypassed_rs2_yrot(w)
						}
	
						.otherwise {
							exe_reg_yrot(w) := rrd_rs3_yrot(w)
						}
	
					}
					.elsewhen(bypassed_rs1_taint(w) === true.B && rrd_uops(w).lrs1_rtype === RT_FLT){
					// now if rs2 is selected and tainted and rs1 is either not selected or not
					// tainted, then take the younger between rs2_yrot rs3_yrot
	
						when(IsOlder(rrd_rs3_yrot(w), bypassed_rs1_yrot(w), io.brupdate.b1.rob_head_idx)) { // if rs1_yrot is younger than rs3_yrot then take rs1_yrot
							exe_reg_yrot(w) := bypassed_rs1_yrot(w)
						}
	
						.otherwise {
							exe_reg_yrot(w) := rrd_rs3_yrot(w)
						}
	
					}
	
					.otherwise {
					// if none of the rs1 and rs2 are tainted and selected, then simply take
					// rs3_yrot
						exe_reg_yrot(w) := rrd_rs3_yrot(w)
					}
				}
	
				.otherwise{
					// if frs3_en == 0 or rs3 not tainted, then it will be same as numReadPorts == 2
	
					when(bypassed_rs1_taint(w) === true.B && bypassed_rs2_taint(w) === true.B && rrd_uops(w).lrs1_rtype === RT_FLT && rrd_uops(w).lrs2_rtype === RT_FLT) {
					// if both operands are tainted and both are selected: yrot is the
					// youngest among them
						when(IsOlder(bypassed_rs1_yrot(w), bypassed_rs2_yrot(w), io.brupdate.b1.rob_head_idx)) { // if rs1_yrot is older then take rs2_yrot
							exe_reg_yrot(w) := bypassed_rs2_yrot(w)
						}.otherwise {
							exe_reg_yrot(w) := bypassed_rs1_yrot(w)
						}
					}
					.elsewhen(bypassed_rs2_taint(w) === true.B && rrd_uops(w).lrs2_rtype === RT_FLT){
					// now if rs2 is selected and tainted and rs1 is either not selected or not
					// tainted, then take rs2_yrot
						exe_reg_yrot(w) := bypassed_rs2_yrot(w)
					}
					.otherwise {
					// in all other cases take rs1_yrot
					// note that it also includes all the cases in which yrot is dont care
						exe_reg_yrot(w) := bypassed_rs1_yrot(w)
					}
				}
			}

		}

		//------------------------------------------

    if (enableSFBOpt)     exe_reg_pred_data(w) := bypassed_pred_data(w)
    // ASSUMPTION: rs3 is FPU which is NOT bypassed
  }
  // TODO add assert to detect bypass conflicts on non-bypassable things
  // TODO add assert that checks bypassing to verify there isn't something it hits rs3

  //-------------------------------------------------------------
  // set outputs to execute pipelines
  for (w <- 0 until issueWidth) {
    val numReadPorts = numReadPortsArray(w)

    io.exe_reqs(w).valid    := exe_reg_valids(w)
    io.exe_reqs(w).bits.uop := exe_reg_uops(w)


		// taint must be propagated from regfile to functional unit
		// Technically this can be done in previous stage saving some state bits
		// added by mofadiheh for taint
		// Should we have a taint clear here too?
//		if (numReadPorts == 1) io.exe_reqs(w).bits.uop.taint := ( exe_reg_rs1_taint(w) && exe_reg_uops(w).ctrl.op1_sel === OP1_RS1 ) || exe_reg_uops(w).taint
//		if (numReadPorts == 2) io.exe_reqs(w).bits.uop.taint := ( exe_reg_rs1_taint(w) && exe_reg_uops(w).ctrl.op1_sel === OP1_RS1 ) ||
//																														( exe_reg_rs2_taint(w) && exe_reg_uops(w).ctrl.op2_sel === OP2_RS2 ) || exe_reg_uops(w).taint
//		if (numReadPorts == 3) io.exe_reqs(w).bits.uop.taint := ( exe_reg_rs1_taint(w) && exe_reg_uops(w).ctrl.op1_sel === OP1_RS1 ) ||
//																														( exe_reg_rs2_taint(w) && exe_reg_uops(w).ctrl.op2_sel === OP2_RS2 ) ||
//																														( exe_reg_rs3_taint(w) && exe_reg_uops(w).frs3_en )             || exe_reg_uops(w).taint
//

		// The taint must be updated before getting
		// The taint register for exe stage is separated from uop register to
		// avoid unnecessary confusions since they get their values
		// in different block
		io.exe_reqs(w).bits.uop.taint :=  GetNewImplicitTaint(io.brupdate, exe_reg_taint(w), exe_reg_uops(w), exe_reg_yrot(w))
		io.exe_reqs(w).bits.uop.yrot  := exe_reg_yrot(w)

		dontTouch(io.exe_reqs(w).bits.uop.taint)
		dontTouch(io.exe_reqs(w).bits.uop.yrot)

    if (numReadPorts > 0) io.exe_reqs(w).bits.rs1_data := exe_reg_rs1_data(w)
    if (numReadPorts > 1) io.exe_reqs(w).bits.rs2_data := exe_reg_rs2_data(w)
    if (numReadPorts > 2) io.exe_reqs(w).bits.rs3_data := exe_reg_rs3_data(w)
    if (enableSFBOpt)     io.exe_reqs(w).bits.pred_data := exe_reg_pred_data(w)
  }
}

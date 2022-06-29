// Security Monitor for UPEC driven secure design flow
// Implemented by Mo 
// This component is in charge of raising alarm if unsafe P-Alerts are detected 
// through runtime
// implemented by Philipp Schmitz, Mohammad Rahmani Fadiheh and Tobias Jauch 29/06/2022

package boom.exu

import java.nio.file.{Paths}

import chisel3._
import chisel3.util._

import freechips.rocketchip.config.Parameters
import freechips.rocketchip.rocket.Instructions._
import freechips.rocketchip.rocket.{Causes, PRV}
import freechips.rocketchip.util.{Str, UIntIsOneOf, CoreMonitorBundle}
import freechips.rocketchip.devices.tilelink.{PLICConsts, CLINTConsts}

import testchipip.{ExtendedTracedInstruction}

import boom.common._
import boom.ifu.{GlobalHistory, HasBoomFrontendParameters}
import boom.exu.FUConstants._
// import boom.common.BoomTilesKey
import boom.util._


class SecurityAlert (implicit p: Parameters) extends BoomBundle
{
	val alert_valid = Bool()
	val alert_mask = UInt()
	val aborted_uop_valid = Vec(2, Bool())
	val aborted_uop_rob_idx = Vec(2, UInt(robAddrSz.W)) 
	val aborted_uop_yrot = Vec(2, UInt(robAddrSz.W)) 
}

class SecurityMonitorJmpUnitSignals (implicit p: Parameters) extends BoomBundle
{
	val jmp_req_valid = Bool()
	val jmp_req_taint = Bool()
	val jmp_req_is_br = Bool()
	val jmp_req_is_jal = Bool()
	val jmp_req_is_jalr = Bool()
	val jmp_rob_idx = UInt(robAddrSz.W)
	val jmp_req_yrot = UInt(robAddrSz.W)

}

class SecurityMonitorCSRSignals (implicit p: Parameters) extends BoomBundle
{
	val csr_req_valid = Bool()
	val csr_req_taint = Bool()
	val csr_req_is_br = Bool()
	val csr_req_is_jal = Bool()
	val csr_req_is_jalr = Bool()
	val csr_rob_idx = UInt(robAddrSz.W)
	val csr_req_yrot = UInt(robAddrSz.W)
}

class SecurityMonitorSignals (implicit p: Parameters) extends BoomBundle
{
	val jmp_signals = new SecurityMonitorJmpUnitSignals()
	val csr_signals = new SecurityMonitorCSRSignals()
}



class SecurityMonitor(implicit p: Parameters) extends BoomModule
{
	val io = IO(new Bundle {
									val sec_alert = Output(new SecurityAlert())
									//val temp = Input(UInt())
									val sec_mon_inputs = Input(new SecurityMonitorSignals())

							})


	var alert1 = Wire(Vec(2, Bool()))
	var alert2 = Wire(Vec(2, Bool()))

  alert1(0) := io.sec_mon_inputs.jmp_signals.jmp_req_valid && io.sec_mon_inputs.jmp_signals.jmp_req_taint && (io.sec_mon_inputs.jmp_signals.jmp_req_is_br || io.sec_mon_inputs.jmp_signals.jmp_req_is_jal || io.sec_mon_inputs.jmp_signals.jmp_req_is_jalr)
	alert1(1) := false.B
	alert2(1) := io.sec_mon_inputs.csr_signals.csr_req_valid && io.sec_mon_inputs.csr_signals.csr_req_taint && (io.sec_mon_inputs.csr_signals.csr_req_is_br || io.sec_mon_inputs.csr_signals.csr_req_is_jal || io.sec_mon_inputs.csr_signals.csr_req_is_jalr)
	alert2(0) := false.B

	when(alert1(0) === false.B && alert2(1) === false.B)
	{
		io.sec_alert.alert_mask := 0.U
		io.sec_alert.alert_valid := false.B
		io.sec_alert.aborted_uop_valid(0) := false.B
		io.sec_alert.aborted_uop_rob_idx(0) := 0.U
		io.sec_alert.aborted_uop_yrot(0) := 0.U

		io.sec_alert.aborted_uop_valid(1) := false.B
		io.sec_alert.aborted_uop_rob_idx(1) := 0.U
		io.sec_alert.aborted_uop_yrot(1) := 0.U
	} .elsewhen(alert1(0) === true.B && alert2(1) === false.B ) {
		io.sec_alert.alert_mask := 1.U
		io.sec_alert.alert_valid := true.B
		io.sec_alert.aborted_uop_valid(0) := true.B
		io.sec_alert.aborted_uop_rob_idx(0) := io.sec_mon_inputs.jmp_signals.jmp_rob_idx
		io.sec_alert.aborted_uop_yrot(0) := io.sec_mon_inputs.jmp_signals.jmp_req_yrot

		io.sec_alert.aborted_uop_valid(1) := false.B
		io.sec_alert.aborted_uop_rob_idx(1) := 0.U
		io.sec_alert.aborted_uop_yrot(1) := 0.U
	} .elsewhen(alert1(0) === false.B && alert2(1) === true.B ) {
		io.sec_alert.alert_mask := 2.U
		io.sec_alert.alert_valid := true.B

		io.sec_alert.aborted_uop_valid(0) := false.B
		io.sec_alert.aborted_uop_rob_idx(0) := 0.U
		io.sec_alert.aborted_uop_yrot(0) := 0.U

		io.sec_alert.aborted_uop_valid(1) := true.B
		io.sec_alert.aborted_uop_rob_idx(1) := io.sec_mon_inputs.csr_signals.csr_rob_idx
		io.sec_alert.aborted_uop_yrot(1) := io.sec_mon_inputs.csr_signals.csr_req_yrot
	} .elsewhen(alert1(0) === true.B && alert2(1) === true.B ) {
		io.sec_alert.alert_mask := 3.U
		io.sec_alert.alert_valid := true.B


		io.sec_alert.aborted_uop_valid(0) := true.B
		io.sec_alert.aborted_uop_rob_idx(0) := io.sec_mon_inputs.jmp_signals.jmp_rob_idx
		io.sec_alert.aborted_uop_yrot(0) := io.sec_mon_inputs.jmp_signals.jmp_req_yrot

		io.sec_alert.aborted_uop_valid(1) := true.B
		io.sec_alert.aborted_uop_rob_idx(1) := io.sec_mon_inputs.csr_signals.csr_rob_idx
		io.sec_alert.aborted_uop_yrot(1) := io.sec_mon_inputs.csr_signals.csr_req_yrot
	}


	dontTouch(io.sec_alert.alert_mask)
	dontTouch(io.sec_alert.aborted_uop_yrot)	
}

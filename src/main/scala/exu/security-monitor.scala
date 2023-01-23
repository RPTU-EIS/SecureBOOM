// Security Monitor for UPEC driven secure design flow
// Implemented by Philipp Schmitz
// This component is in charge of raising alarm if unsafe P-Alerts are detected
// through runtime

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
	val aborted_uop_valid = Vec(4, Bool())
	val aborted_uop_rob_idx = Vec(4, UInt(robAddrSz.W))
	val aborted_uop_yrot = Vec(4, UInt(robAddrSz.W))
	val aborted_uop_yrot_brmask = Vec(4, UInt(maxBrCount.W)) // added by tojauch for spectre model
}

class SecurityMonitorControlSignals (implicit p: Parameters) extends BoomBundle
{
	val req_valid = Bool()
	val req_taint = Bool()
	val rob_idx = UInt(robAddrSz.W)
	val req_yrot = UInt(robAddrSz.W)
	val req_yrot_brmask = UInt(maxBrCount.W) // added by tojauch for spectre model

}

class SecurityMonitorControlSignalsExtended (implicit p: Parameters) extends SecurityMonitorControlSignals
{
	val req_is_br = Bool()
	val req_is_jal = Bool()
	val req_is_jalr = Bool()
}

class SecurityMonitorSignals (implicit p: Parameters) extends BoomBundle
{
	val jmp_signals = new SecurityMonitorControlSignalsExtended()
	val csr_signals = new SecurityMonitorControlSignalsExtended()
	val fdiv_signals = new SecurityMonitorControlSignals()
	val div_signals = new SecurityMonitorControlSignals()
}



class SecurityMonitor(implicit p: Parameters) extends BoomModule
{
	val io = IO(new Bundle {
		val sec_alert = Output(new SecurityAlert())
		//val temp = Input(UInt())
		val sec_mon_inputs = Input(new SecurityMonitorSignals())

	})

	//add new types of alerts here
	val jmp_alert = Wire(Bool())
	val csr_alert = Wire(Bool())
	val fdiv_alert = Wire(Bool())
	val div_alert = Wire(Bool())

	jmp_alert := io.sec_mon_inputs.jmp_signals.req_valid && io.sec_mon_inputs.jmp_signals.req_taint && (io.sec_mon_inputs.jmp_signals.req_is_br || io.sec_mon_inputs.jmp_signals.req_is_jal || io.sec_mon_inputs.jmp_signals.req_is_jalr)
	csr_alert := io.sec_mon_inputs.csr_signals.req_valid && io.sec_mon_inputs.csr_signals.req_taint && (io.sec_mon_inputs.csr_signals.req_is_br || io.sec_mon_inputs.csr_signals.req_is_jal || io.sec_mon_inputs.csr_signals.req_is_jalr)
	//every tainted (f)div uop is transient
	fdiv_alert := io.sec_mon_inputs.fdiv_signals.req_valid && io.sec_mon_inputs.fdiv_signals.req_taint
	div_alert := io.sec_mon_inputs.div_signals.req_valid && io.sec_mon_inputs.div_signals.req_taint
	//continue adding like this for alert encoding
	io.sec_alert.alert_mask := jmp_alert * 1.U + csr_alert * 2.U + fdiv_alert * 4.U + div_alert * 8.U

	io.sec_alert.alert_valid := jmp_alert || csr_alert || fdiv_alert || div_alert

	io.sec_alert.aborted_uop_valid(0) := jmp_alert
	io.sec_alert.aborted_uop_valid(1) := csr_alert
	io.sec_alert.aborted_uop_valid(2) := fdiv_alert
	io.sec_alert.aborted_uop_valid(3) := div_alert

	when(jmp_alert === true.B) {
		io.sec_alert.aborted_uop_valid(0) := true.B
		io.sec_alert.aborted_uop_rob_idx(0) := io.sec_mon_inputs.jmp_signals.rob_idx
		io.sec_alert.aborted_uop_yrot(0) := io.sec_mon_inputs.jmp_signals.req_yrot
	} .elsewhen(jmp_alert === false.B) {
		io.sec_alert.aborted_uop_valid(0) := false.B
		io.sec_alert.aborted_uop_rob_idx(0) := 0.U
		io.sec_alert.aborted_uop_yrot(0) := 0.U
	}

	when(csr_alert === true.B) {
		io.sec_alert.aborted_uop_valid(1) := true.B
		io.sec_alert.aborted_uop_rob_idx(1) := io.sec_mon_inputs.csr_signals.rob_idx
		io.sec_alert.aborted_uop_yrot(1) := io.sec_mon_inputs.csr_signals.req_yrot
		io.sec_alert.aborted_uop_yrot_brmask(0) := io.sec_mon_inputs.jmp_signals.req_yrot_brmask // added by tojauch for spectre model
	} .elsewhen(csr_alert === false.B) {
		io.sec_alert.aborted_uop_valid(1) := false.B
		io.sec_alert.aborted_uop_rob_idx(1) := 0.U
		io.sec_alert.aborted_uop_yrot(1) := 0.U
		io.sec_alert.aborted_uop_yrot_brmask(0) := 0.U // added by tojauch for spectre model
	}

	when(fdiv_alert === true.B) {
		io.sec_alert.aborted_uop_valid(2) := true.B
		io.sec_alert.aborted_uop_rob_idx(2) := io.sec_mon_inputs.fdiv_signals.rob_idx
		io.sec_alert.aborted_uop_yrot(2) := io.sec_mon_inputs.fdiv_signals.req_yrot
		io.sec_alert.aborted_uop_yrot_brmask(2) := io.sec_mon_inputs.fdiv_signals.req_yrot_brmask // added by tojauch for spectre model
	} .elsewhen(fdiv_alert === false.B) {
		io.sec_alert.aborted_uop_valid(2) := false.B
		io.sec_alert.aborted_uop_rob_idx(2) := 0.U
		io.sec_alert.aborted_uop_yrot(2) := 0.U
		io.sec_alert.aborted_uop_yrot_brmask(2) := 0.U // added by tojauch for spectre model
	}

	when(div_alert === true.B) {
		io.sec_alert.aborted_uop_valid(3) := true.B
		io.sec_alert.aborted_uop_rob_idx(3) := io.sec_mon_inputs.div_signals.rob_idx
		io.sec_alert.aborted_uop_yrot(3) := io.sec_mon_inputs.div_signals.req_yrot
		io.sec_alert.aborted_uop_yrot_brmask(3) := io.sec_mon_inputs.div_signals.req_yrot_brmask // added by tojauch for spectre model
	} .elsewhen(fdiv_alert === false.B) {
		io.sec_alert.aborted_uop_valid(3) := false.B
		io.sec_alert.aborted_uop_rob_idx(3) := 0.U
		io.sec_alert.aborted_uop_yrot(3) := 0.U
		io.sec_alert.aborted_uop_yrot_brmask(3) := 0.U // added by tojauch for spectre model
	}

	dontTouch(io.sec_alert.alert_mask)
	dontTouch(io.sec_alert.aborted_uop_yrot)
}
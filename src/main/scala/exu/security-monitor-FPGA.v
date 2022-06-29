module SecurityMonitor( // @[:chipyard.TestHarness.MediumBoomConfig.fir@474096.2]
  input        clock, // @[:chipyard.TestHarness.MediumBoomConfig.fir@474097.4]
  output       io_sec_alert_alert_valid, // @[:chipyard.TestHarness.MediumBoomConfig.fir@474099.4]
  output [1:0] io_sec_alert_alert_mask, // @[:chipyard.TestHarness.MediumBoomConfig.fir@474099.4]
  output       io_sec_alert_aborted_uop_valid_0, // @[:chipyard.TestHarness.MediumBoomConfig.fir@474099.4]
  output       io_sec_alert_aborted_uop_valid_1, // @[:chipyard.TestHarness.MediumBoomConfig.fir@474099.4]
  output [5:0] io_sec_alert_aborted_uop_rob_idx_0, // @[:chipyard.TestHarness.MediumBoomConfig.fir@474099.4]
  output [5:0] io_sec_alert_aborted_uop_rob_idx_1, // @[:chipyard.TestHarness.MediumBoomConfig.fir@474099.4]
  output [5:0] io_sec_alert_aborted_uop_yrot_0, // @[:chipyard.TestHarness.MediumBoomConfig.fir@474099.4]
  output [5:0] io_sec_alert_aborted_uop_yrot_1, // @[:chipyard.TestHarness.MediumBoomConfig.fir@474099.4]
  input  [9:0] io_temp // @[:chipyard.TestHarness.MediumBoomConfig.fir@474099.4]
);

  wire [1:0] alert1;
  wire [1:0] alert2;
  
  assign alert1 = (ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.jmp_unit.alu.io_req_valid && ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.jmp_unit.alu.io_req_bits_uop_taint &&
		( ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.jmp_unit.alu.io_req_bits_uop_is_br || ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.jmp_unit.alu.io_req_bits_uop_is_jal 
		|| ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.jmp_unit.alu.io_req_bits_uop_is_jalr) ) ? 2'b01 : 2'b00;
  
  assign alert2 = (ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.csr_exe_unit.alu.io_req_valid && ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.csr_exe_unit.alu.io_req_bits_uop_taint &&
		( ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.csr_exe_unit.alu.io_req_bits_uop_is_br || ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.csr_exe_unit.alu.io_req_bits_uop_is_jal 
		|| ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.csr_exe_unit.alu.io_req_bits_uop_is_jalr) ) ? 2'b10 : 2'b00;
  
  wire [1:0] alert_mask;
  assign alert_mask = alert1 | alert2;
  
  assign io_sec_alert_alert_valid = alert_mask != 2'b00;
  assign io_sec_alert_alert_mask = alert_mask;
  
  assign io_sec_alert_aborted_uop_valid_0 = alert1 != 2'b00 ;
	
  assign io_sec_alert_aborted_uop_rob_idx_0 = (alert1 != 2'b00) ? ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.jmp_unit.alu.io_req_bits_uop_rob_idx : 6'h0;

  assign io_sec_alert_aborted_uop_yrot_0 = (alert1 != 2'b00) ? ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.jmp_unit.alu.io_req_bits_uop_yrot : 6'h0;
	
  assign io_sec_alert_aborted_uop_valid_1 = alert2 != 2'b00;
	
  assign io_sec_alert_aborted_uop_rob_idx_1 = (alert2 != 2'b00) ? ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.csr_exe_unit.alu.io_req_bits_uop_rob_idx : 6'h0;

  assign io_sec_alert_aborted_uop_yrot_1 = (alert2 != 2'b00) ? ZCU104FPGATestHarness.chiptop.system.tile_prci_domain.tile_reset_domain.boom_tile.core.csr_exe_unit.alu.io_req_bits_uop_yrot : 6'h0;	

	

endmodule


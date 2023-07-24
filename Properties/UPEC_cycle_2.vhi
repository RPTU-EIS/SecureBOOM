include "blackboxing.vli";
include "micro_soc_macro_p_alerts.vli";

property UPEC_core/fp_pipeline/fregfile_io_write_ports_0_REG_bits_data_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fregfile_io_write_ports_0_REG_bits_data == soc2/core/fp_pipeline/fregfile_io_write_ports_0_REG_bits_data;

end property;



property UPEC_core/iregfile/regfile_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/iregfile/regfile == soc2/core/iregfile/regfile;

end property;



property UPEC_core/iregister_read/exe_reg_rs1_data_0_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/iregister_read/exe_reg_rs1_data_0 == soc2/core/iregister_read/exe_reg_rs1_data_0;

end property;



property UPEC_core/iregister_read/exe_reg_rs1_data_1_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/iregister_read/exe_reg_rs1_data_1 == soc2/core/iregister_read/exe_reg_rs1_data_1;

end property;



property UPEC_core/iregister_read/exe_reg_rs1_data_2_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/iregister_read/exe_reg_rs1_data_2 == soc2/core/iregister_read/exe_reg_rs1_data_2;

end property;



property UPEC_core/iregister_read/exe_reg_rs2_data_0_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/iregister_read/exe_reg_rs2_data_0 == soc2/core/iregister_read/exe_reg_rs2_data_0;

end property;



property UPEC_core/iregister_read/exe_reg_rs2_data_1_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/iregister_read/exe_reg_rs2_data_1 == soc2/core/iregister_read/exe_reg_rs2_data_1;

end property;



property UPEC_core/iregister_read/exe_reg_rs2_data_2_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/iregister_read/exe_reg_rs2_data_2 == soc2/core/iregister_read/exe_reg_rs2_data_2;

end property;



property UPEC_dcache/s3_req_data_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/dcache/s3_req_data == soc2/dcache/s3_req_data;

end property;



property UPEC_dcache/wb/wb_buffer_0_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/dcache/wb/wb_buffer_0 == soc2/dcache/wb/wb_buffer_0;

end property;



property UPEC_dcache/wb/wb_buffer_1_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/dcache/wb/wb_buffer_1 == soc2/dcache/wb/wb_buffer_1;

end property;



property UPEC_dcache/wb/wb_buffer_2_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/dcache/wb/wb_buffer_2 == soc2/dcache/wb/wb_buffer_2;

end property;



property UPEC_dcache/wb/wb_buffer_3_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/dcache/wb/wb_buffer_3 == soc2/dcache/wb/wb_buffer_3;

end property;



property UPEC_dcache/wb/wb_buffer_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/dcache/wb/wb_buffer_4 == soc2/dcache/wb/wb_buffer_4;

end property;



property UPEC_dcache/wb/wb_buffer_5_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/dcache/wb/wb_buffer_5 == soc2/dcache/wb/wb_buffer_5;

end property;



property UPEC_dcache/wb/wb_buffer_6_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/dcache/wb/wb_buffer_6 == soc2/dcache/wb/wb_buffer_6;

end property;



property UPEC_dcache/wb/wb_buffer_7_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/dcache/wb/wb_buffer_7 == soc2/dcache/wb/wb_buffer_7;

end property;



property UPEC_ptw/mem_resp_data_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

    at t+2: soc1/ptw/mem_resp_valid && soc2/ptw/mem_resp_valid;

prove:

    at t+2: soc1/ptw/mem_resp_data == soc2/ptw/mem_resp_data;

end property;




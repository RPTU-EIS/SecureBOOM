include "blackboxing.vli";
include "micro_soc_macro_p_alerts.vli";

property UPEC_core/b2_jalr_target_REG_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/b2_jalr_target_REG == soc2/core/b2_jalr_target_REG;

end property;



property UPEC_core/brinfos_0_mispredict_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

    //at t+3: soc1/core/brinfos_0_valid && soc2/core/brinfos_0_valid;

prove:

    at t+3: soc1/core/brinfos_0_mispredict == soc2/core/brinfos_0_mispredict;

end property;



property UPEC_core/brinfos_0_pc_sel_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/brinfos_0_pc_sel == soc2/core/brinfos_0_pc_sel;

end property;



property UPEC_core/brinfos_0_taken_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/brinfos_0_taken == soc2/core/brinfos_0_taken;

end property;



property UPEC_core/brinfos_1_mispredict_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/brinfos_1_mispredict == soc2/core/brinfos_1_mispredict;

end property;



property UPEC_core/brinfos_1_pc_sel_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/brinfos_1_pc_sel == soc2/core/brinfos_1_pc_sel;

end property;



property UPEC_core/brinfos_1_taken_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/brinfos_1_taken == soc2/core/brinfos_1_taken;

end property;



property UPEC_core/csr_exe_unit/alu/r_data_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/csr_exe_unit/alu/r_data_0 == soc2/core/csr_exe_unit/alu/r_data_0;

end property;



property UPEC_core/csr_exe_unit/div/div/divisor_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/csr_exe_unit/div/div/divisor == soc2/core/csr_exe_unit/div/div/divisor;

end property;



property UPEC_core/csr_exe_unit/div/div/neg_out_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/csr_exe_unit/div/div/neg_out == soc2/core/csr_exe_unit/div/div/neg_out;

end property;



property UPEC_core/csr_exe_unit/div/div/remainder_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/csr_exe_unit/div/div/remainder == soc2/core/csr_exe_unit/div/div/remainder;

end property;



property UPEC_core/csr_exe_unit/div/div/state_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/csr_exe_unit/div/div/state == soc2/core/csr_exe_unit/div/div/state;

end property;



property UPEC_core/fp_pipeline/fregfile/regfile_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/fp_pipeline/fregfile/regfile == soc2/core/fp_pipeline/fregfile/regfile;

end property;



property UPEC_core/io_ifu_sfence_REG_bits_addr_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

    at t+3: soc1/core/io_ifu_sfence_REG_valid && soc1/core/io_ifu_sfence_REG_valid;


prove:

    at t+3: soc1/core/io_ifu_sfence_REG_bits_addr == soc2/core/io_ifu_sfence_REG_bits_addr;

end property;



property UPEC_core/jmp_unit/alu/r_data_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/jmp_unit/alu/r_data_0 == soc2/core/jmp_unit/alu/r_data_0;

end property;



property UPEC_core/jmp_unit/ifpu/ifpu/inPipe_bits_in1_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/jmp_unit/ifpu/ifpu/inPipe_bits_in1 == soc2/core/jmp_unit/ifpu/ifpu/inPipe_bits_in1;

end property;



property UPEC_core/jmp_unit/imul/imul/inPipe_bits_in1_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/jmp_unit/imul/imul/inPipe_bits_in1 == soc2/core/jmp_unit/imul/imul/inPipe_bits_in1;

end property;



property UPEC_core/jmp_unit/imul/imul/inPipe_bits_in2_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/core/jmp_unit/imul/imul/inPipe_bits_in2 == soc2/core/jmp_unit/imul/imul/inPipe_bits_in2;

end property;



property UPEC_dcache/REG_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/REG == soc2/dcache/REG;

end property;



property UPEC_dcache/REG_1_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/REG_1 == soc2/dcache/REG_1;

end property;



property UPEC_dcache/data/array_0_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/data/array_0_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0 == soc2/dcache/data/array_0_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0;

end property;



property UPEC_dcache/data/array_0_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/data/array_0_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0 == soc2/dcache/data/array_0_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0;

end property;



property UPEC_dcache/data/array_1_0/array_0_0_ext/mem_0_0/ram_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/data/array_1_0/array_0_0_ext/mem_0_0/ram == soc2/dcache/data/array_1_0/array_0_0_ext/mem_0_0/ram;

end property;



property UPEC_dcache/data/array_1_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/data/array_1_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0 == soc2/dcache/data/array_1_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0;

end property;



property UPEC_dcache/data/array_1_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/data/array_1_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0 == soc2/dcache/data/array_1_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0;

end property;



property UPEC_dcache/data/array_2_0/array_0_0_ext/mem_0_0/ram_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/data/array_2_0/array_0_0_ext/mem_0_0/ram == soc2/dcache/data/array_2_0/array_0_0_ext/mem_0_0/ram;

end property;



property UPEC_dcache/data/array_2_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/data/array_2_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0 == soc2/dcache/data/array_2_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0;

end property;



property UPEC_dcache/data/array_2_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/data/array_2_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0 == soc2/dcache/data/array_2_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0;

end property;



property UPEC_dcache/data/array_3_0/array_0_0_ext/mem_0_0/ram_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/data/array_3_0/array_0_0_ext/mem_0_0/ram == soc2/dcache/data/array_3_0/array_0_0_ext/mem_0_0/ram;

end property;



property UPEC_dcache/data/array_3_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/data/array_3_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0 == soc2/dcache/data/array_3_0/array_0_0_ext/mem_0_0/ram_R_0_addr_pipe_0;

end property;



property UPEC_dcache/data/array_3_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/data/array_3_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0 == soc2/dcache/data/array_3_0/array_0_0_ext/mem_0_0/ram_R_0_en_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_addr_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_addr_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_addr_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_en_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_en_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_en_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_addr_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_addr_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_addr_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_en_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_en_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_en_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_addr_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_addr_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_addr_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_en_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_en_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_en_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_addr_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_addr_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_addr_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_en_pipe_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_en_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_en_pipe_0;

end property;



property UPEC_dcache/s1_req_0_addr_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_addr == soc2/dcache/s1_req_0_addr;

end property;



property UPEC_dcache/s1_req_0_data_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_data == soc2/dcache/s1_req_0_data;

end property;



property UPEC_dcache/s1_req_0_is_hella_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_is_hella == soc2/dcache/s1_req_0_is_hella;

end property;



property UPEC_dcache/s1_req_0_uop_br_mask_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_uop_br_mask == soc2/dcache/s1_req_0_uop_br_mask;

end property;



property UPEC_dcache/s1_req_0_uop_is_amo_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_uop_is_amo == soc2/dcache/s1_req_0_uop_is_amo;

end property;



property UPEC_dcache/s1_req_0_uop_ldq_idx_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_uop_ldq_idx == soc2/dcache/s1_req_0_uop_ldq_idx;

end property;



property UPEC_dcache/s1_req_0_uop_mem_cmd_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_uop_mem_cmd == soc2/dcache/s1_req_0_uop_mem_cmd;

end property;



property UPEC_dcache/s1_req_0_uop_mem_signed_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_uop_mem_signed == soc2/dcache/s1_req_0_uop_mem_signed;

end property;



property UPEC_dcache/s1_req_0_uop_mem_size_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_uop_mem_size == soc2/dcache/s1_req_0_uop_mem_size;

end property;



property UPEC_dcache/s1_req_0_uop_stq_idx_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_uop_stq_idx == soc2/dcache/s1_req_0_uop_stq_idx;

end property;



property UPEC_dcache/s1_req_0_uop_uses_ldq_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_uop_uses_ldq == soc2/dcache/s1_req_0_uop_uses_ldq;

end property;



property UPEC_dcache/s1_req_0_uop_uses_stq_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_req_0_uop_uses_stq == soc2/dcache/s1_req_0_uop_uses_stq;

end property;



property UPEC_dcache/s1_send_resp_or_nack_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_send_resp_or_nack_0 == soc2/dcache/s1_send_resp_or_nack_0;

end property;



property UPEC_dcache/s1_type_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_type == soc2/dcache/s1_type;

end property;



property UPEC_dcache/s1_valid_REG_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s1_valid_REG == soc2/dcache/s1_valid_REG;

end property;



property UPEC_dcache/s4_req_data_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/dcache/s4_req_data == soc2/dcache/s4_req_data;

end property;



property UPEC_lsu/dtlb/r_refill_tag_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/r_refill_tag == soc2/lsu/dtlb/r_refill_tag;

end property;



property UPEC_lsu/dtlb/r_sectored_hit_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/r_sectored_hit == soc2/lsu/dtlb/r_sectored_hit;

end property;



property UPEC_lsu/dtlb/r_sectored_hit_addr_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/r_sectored_hit_addr == soc2/lsu/dtlb/r_sectored_hit_addr;

end property;



property UPEC_lsu/dtlb/r_sectored_repl_addr_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/r_sectored_repl_addr == soc2/lsu/dtlb/r_sectored_repl_addr;

end property;



property UPEC_lsu/dtlb/r_superpage_repl_addr_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/r_superpage_repl_addr == soc2/lsu/dtlb/r_superpage_repl_addr;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_data_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_0_data_0 == soc2/lsu/dtlb/sectored_entries_0_data_0;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_data_1_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_0_data_1 == soc2/lsu/dtlb/sectored_entries_0_data_1;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_data_2_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_0_data_2 == soc2/lsu/dtlb/sectored_entries_0_data_2;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_data_3_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_0_data_3 == soc2/lsu/dtlb/sectored_entries_0_data_3;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_valid_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_0_valid_0 == soc2/lsu/dtlb/sectored_entries_0_valid_0;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_valid_1_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_0_valid_1 == soc2/lsu/dtlb/sectored_entries_0_valid_1;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_valid_2_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_0_valid_2 == soc2/lsu/dtlb/sectored_entries_0_valid_2;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_valid_3_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_0_valid_3 == soc2/lsu/dtlb/sectored_entries_0_valid_3;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_data_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_1_data_0 == soc2/lsu/dtlb/sectored_entries_1_data_0;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_data_1_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_1_data_1 == soc2/lsu/dtlb/sectored_entries_1_data_1;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_data_2_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_1_data_2 == soc2/lsu/dtlb/sectored_entries_1_data_2;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_data_3_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_1_data_3 == soc2/lsu/dtlb/sectored_entries_1_data_3;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_valid_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_1_valid_0 == soc2/lsu/dtlb/sectored_entries_1_valid_0;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_valid_1_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_1_valid_1 == soc2/lsu/dtlb/sectored_entries_1_valid_1;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_valid_2_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_1_valid_2 == soc2/lsu/dtlb/sectored_entries_1_valid_2;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_valid_3_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/sectored_entries_1_valid_3 == soc2/lsu/dtlb/sectored_entries_1_valid_3;

end property;



property UPEC_lsu/dtlb/special_entry_data_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/special_entry_data_0 == soc2/lsu/dtlb/special_entry_data_0;

end property;



property UPEC_lsu/dtlb/special_entry_valid_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/special_entry_valid_0 == soc2/lsu/dtlb/special_entry_valid_0;

end property;



property UPEC_lsu/dtlb/state_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/state == soc2/lsu/dtlb/state;

end property;



property UPEC_lsu/dtlb/state_reg_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/state_reg == soc2/lsu/dtlb/state_reg;

end property;



property UPEC_lsu/dtlb/state_reg_1_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/state_reg_1 == soc2/lsu/dtlb/state_reg_1;

end property;



property UPEC_lsu/dtlb/superpage_entries_0_data_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/superpage_entries_0_data_0 == soc2/lsu/dtlb/superpage_entries_0_data_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_0_valid_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/superpage_entries_0_valid_0 == soc2/lsu/dtlb/superpage_entries_0_valid_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_1_data_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/superpage_entries_1_data_0 == soc2/lsu/dtlb/superpage_entries_1_data_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_1_valid_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/superpage_entries_1_valid_0 == soc2/lsu/dtlb/superpage_entries_1_valid_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_2_data_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/superpage_entries_2_data_0 == soc2/lsu/dtlb/superpage_entries_2_data_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_2_valid_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/superpage_entries_2_valid_0 == soc2/lsu/dtlb/superpage_entries_2_valid_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_3_data_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/superpage_entries_3_data_0 == soc2/lsu/dtlb/superpage_entries_3_data_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_3_valid_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/dtlb/superpage_entries_3_valid_0 == soc2/lsu/dtlb/superpage_entries_3_valid_0;

end property;



property UPEC_lsu/hella_paddr_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/hella_paddr == soc2/lsu/hella_paddr;

end property;



property UPEC_lsu/hella_state_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/hella_state == soc2/lsu/hella_state;

end property;



property UPEC_lsu/hella_xcpt_ae_ld_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/hella_xcpt_ae_ld == soc2/lsu/hella_xcpt_ae_ld;

end property;



property UPEC_lsu/hella_xcpt_ae_st_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/hella_xcpt_ae_st == soc2/lsu/hella_xcpt_ae_st;

end property;



property UPEC_lsu/hella_xcpt_ma_ld_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/hella_xcpt_ma_ld == soc2/lsu/hella_xcpt_ma_ld;

end property;



property UPEC_lsu/hella_xcpt_ma_st_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/hella_xcpt_ma_st == soc2/lsu/hella_xcpt_ma_st;

end property;



property UPEC_lsu/hella_xcpt_pf_ld_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/hella_xcpt_pf_ld == soc2/lsu/hella_xcpt_pf_ld;

end property;



property UPEC_lsu/hella_xcpt_pf_st_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/hella_xcpt_pf_st == soc2/lsu/hella_xcpt_pf_st;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG == soc2/lsu/io_dmem_s1_kill_0_REG;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_1_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_1 == soc2/lsu/io_dmem_s1_kill_0_REG_1;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_10_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_10 == soc2/lsu/io_dmem_s1_kill_0_REG_10;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_11_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_11 == soc2/lsu/io_dmem_s1_kill_0_REG_11;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_12_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_12 == soc2/lsu/io_dmem_s1_kill_0_REG_12;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_13_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_13 == soc2/lsu/io_dmem_s1_kill_0_REG_13;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_14_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_14 == soc2/lsu/io_dmem_s1_kill_0_REG_14;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_15_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_15 == soc2/lsu/io_dmem_s1_kill_0_REG_15;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_16_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_16 == soc2/lsu/io_dmem_s1_kill_0_REG_16;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_17_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_17 == soc2/lsu/io_dmem_s1_kill_0_REG_17;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_18_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_18 == soc2/lsu/io_dmem_s1_kill_0_REG_18;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_19_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_19 == soc2/lsu/io_dmem_s1_kill_0_REG_19;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_2_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_2 == soc2/lsu/io_dmem_s1_kill_0_REG_2;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_20_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_20 == soc2/lsu/io_dmem_s1_kill_0_REG_20;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_21_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_21 == soc2/lsu/io_dmem_s1_kill_0_REG_21;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_22_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_22 == soc2/lsu/io_dmem_s1_kill_0_REG_22;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_23_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_23 == soc2/lsu/io_dmem_s1_kill_0_REG_23;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_24_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_24 == soc2/lsu/io_dmem_s1_kill_0_REG_24;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_25_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_25 == soc2/lsu/io_dmem_s1_kill_0_REG_25;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_26_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_26 == soc2/lsu/io_dmem_s1_kill_0_REG_26;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_27_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_27 == soc2/lsu/io_dmem_s1_kill_0_REG_27;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_28_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_28 == soc2/lsu/io_dmem_s1_kill_0_REG_28;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_29_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_29 == soc2/lsu/io_dmem_s1_kill_0_REG_29;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_3_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_3 == soc2/lsu/io_dmem_s1_kill_0_REG_3;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_30_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_30 == soc2/lsu/io_dmem_s1_kill_0_REG_30;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_31_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_31 == soc2/lsu/io_dmem_s1_kill_0_REG_31;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_32_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_32 == soc2/lsu/io_dmem_s1_kill_0_REG_32;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_33_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_33 == soc2/lsu/io_dmem_s1_kill_0_REG_33;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_34_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_34 == soc2/lsu/io_dmem_s1_kill_0_REG_34;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_35_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_35 == soc2/lsu/io_dmem_s1_kill_0_REG_35;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_36_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_36 == soc2/lsu/io_dmem_s1_kill_0_REG_36;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_37_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_37 == soc2/lsu/io_dmem_s1_kill_0_REG_37;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_38_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_38 == soc2/lsu/io_dmem_s1_kill_0_REG_38;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_39_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_39 == soc2/lsu/io_dmem_s1_kill_0_REG_39;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_4_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_4 == soc2/lsu/io_dmem_s1_kill_0_REG_4;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_40_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_40 == soc2/lsu/io_dmem_s1_kill_0_REG_40;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_41_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_41 == soc2/lsu/io_dmem_s1_kill_0_REG_41;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_42_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_42 == soc2/lsu/io_dmem_s1_kill_0_REG_42;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_43_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_43 == soc2/lsu/io_dmem_s1_kill_0_REG_43;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_44_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_44 == soc2/lsu/io_dmem_s1_kill_0_REG_44;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_45_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_45 == soc2/lsu/io_dmem_s1_kill_0_REG_45;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_46_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_46 == soc2/lsu/io_dmem_s1_kill_0_REG_46;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_47_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_47 == soc2/lsu/io_dmem_s1_kill_0_REG_47;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_48_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_48 == soc2/lsu/io_dmem_s1_kill_0_REG_48;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_49_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_49 == soc2/lsu/io_dmem_s1_kill_0_REG_49;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_5_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_5 == soc2/lsu/io_dmem_s1_kill_0_REG_5;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_50_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_50 == soc2/lsu/io_dmem_s1_kill_0_REG_50;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_51_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_51 == soc2/lsu/io_dmem_s1_kill_0_REG_51;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_52_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_52 == soc2/lsu/io_dmem_s1_kill_0_REG_52;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_53_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_53 == soc2/lsu/io_dmem_s1_kill_0_REG_53;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_54_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_54 == soc2/lsu/io_dmem_s1_kill_0_REG_54;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_55_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_55 == soc2/lsu/io_dmem_s1_kill_0_REG_55;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_56_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_56 == soc2/lsu/io_dmem_s1_kill_0_REG_56;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_57_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_57 == soc2/lsu/io_dmem_s1_kill_0_REG_57;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_58_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_58 == soc2/lsu/io_dmem_s1_kill_0_REG_58;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_59_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_59 == soc2/lsu/io_dmem_s1_kill_0_REG_59;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_6_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_6 == soc2/lsu/io_dmem_s1_kill_0_REG_6;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_60_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_60 == soc2/lsu/io_dmem_s1_kill_0_REG_60;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_61_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_61 == soc2/lsu/io_dmem_s1_kill_0_REG_61;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_62_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_62 == soc2/lsu/io_dmem_s1_kill_0_REG_62;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_63_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_63 == soc2/lsu/io_dmem_s1_kill_0_REG_63;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_64_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_64 == soc2/lsu/io_dmem_s1_kill_0_REG_64;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_7_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_7 == soc2/lsu/io_dmem_s1_kill_0_REG_7;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_8_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_8 == soc2/lsu/io_dmem_s1_kill_0_REG_8;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_9_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/io_dmem_s1_kill_0_REG_9 == soc2/lsu/io_dmem_s1_kill_0_REG_9;

end property;



property UPEC_lsu/lcam_addr_REG_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/lcam_addr_REG == soc2/lsu/lcam_addr_REG;

end property;



property UPEC_lsu/ldq_0_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_0_bits_addr_bits == soc2/lsu/ldq_0_bits_addr_bits;

end property;



property UPEC_lsu/ldq_0_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_0_bits_addr_is_uncacheable == soc2/lsu/ldq_0_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_0_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_0_bits_addr_is_virtual == soc2/lsu/ldq_0_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_0_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_0_bits_failure == soc2/lsu/ldq_0_bits_failure;

end property;



property UPEC_lsu/ldq_10_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_10_bits_addr_bits == soc2/lsu/ldq_10_bits_addr_bits;

end property;



property UPEC_lsu/ldq_10_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_10_bits_addr_is_uncacheable == soc2/lsu/ldq_10_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_10_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_10_bits_addr_is_virtual == soc2/lsu/ldq_10_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_10_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_10_bits_failure == soc2/lsu/ldq_10_bits_failure;

end property;



property UPEC_lsu/ldq_11_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_11_bits_addr_bits == soc2/lsu/ldq_11_bits_addr_bits;

end property;



property UPEC_lsu/ldq_11_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_11_bits_addr_is_uncacheable == soc2/lsu/ldq_11_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_11_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_11_bits_addr_is_virtual == soc2/lsu/ldq_11_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_11_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_11_bits_failure == soc2/lsu/ldq_11_bits_failure;

end property;



property UPEC_lsu/ldq_12_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_12_bits_addr_bits == soc2/lsu/ldq_12_bits_addr_bits;

end property;



property UPEC_lsu/ldq_12_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_12_bits_addr_is_uncacheable == soc2/lsu/ldq_12_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_12_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_12_bits_addr_is_virtual == soc2/lsu/ldq_12_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_12_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_12_bits_failure == soc2/lsu/ldq_12_bits_failure;

end property;



property UPEC_lsu/ldq_13_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_13_bits_addr_bits == soc2/lsu/ldq_13_bits_addr_bits;

end property;



property UPEC_lsu/ldq_13_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_13_bits_addr_is_uncacheable == soc2/lsu/ldq_13_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_13_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_13_bits_addr_is_virtual == soc2/lsu/ldq_13_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_13_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_13_bits_failure == soc2/lsu/ldq_13_bits_failure;

end property;



property UPEC_lsu/ldq_14_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_14_bits_addr_bits == soc2/lsu/ldq_14_bits_addr_bits;

end property;



property UPEC_lsu/ldq_14_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_14_bits_addr_is_uncacheable == soc2/lsu/ldq_14_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_14_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_14_bits_addr_is_virtual == soc2/lsu/ldq_14_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_14_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_14_bits_failure == soc2/lsu/ldq_14_bits_failure;

end property;



property UPEC_lsu/ldq_15_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_15_bits_addr_bits == soc2/lsu/ldq_15_bits_addr_bits;

end property;



property UPEC_lsu/ldq_15_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_15_bits_addr_is_uncacheable == soc2/lsu/ldq_15_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_15_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_15_bits_addr_is_virtual == soc2/lsu/ldq_15_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_15_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_15_bits_failure == soc2/lsu/ldq_15_bits_failure;

end property;



property UPEC_lsu/ldq_1_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_1_bits_addr_bits == soc2/lsu/ldq_1_bits_addr_bits;

end property;



property UPEC_lsu/ldq_1_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_1_bits_addr_is_uncacheable == soc2/lsu/ldq_1_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_1_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_1_bits_addr_is_virtual == soc2/lsu/ldq_1_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_1_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_1_bits_failure == soc2/lsu/ldq_1_bits_failure;

end property;



property UPEC_lsu/ldq_2_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_2_bits_addr_bits == soc2/lsu/ldq_2_bits_addr_bits;

end property;



property UPEC_lsu/ldq_2_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_2_bits_addr_is_uncacheable == soc2/lsu/ldq_2_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_2_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_2_bits_addr_is_virtual == soc2/lsu/ldq_2_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_2_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_2_bits_failure == soc2/lsu/ldq_2_bits_failure;

end property;



property UPEC_lsu/ldq_3_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_3_bits_addr_bits == soc2/lsu/ldq_3_bits_addr_bits;

end property;



property UPEC_lsu/ldq_3_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_3_bits_addr_is_uncacheable == soc2/lsu/ldq_3_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_3_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_3_bits_addr_is_virtual == soc2/lsu/ldq_3_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_3_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_3_bits_failure == soc2/lsu/ldq_3_bits_failure;

end property;



property UPEC_lsu/ldq_4_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_4_bits_addr_bits == soc2/lsu/ldq_4_bits_addr_bits;

end property;



property UPEC_lsu/ldq_4_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_4_bits_addr_is_uncacheable == soc2/lsu/ldq_4_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_4_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_4_bits_addr_is_virtual == soc2/lsu/ldq_4_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_4_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_4_bits_failure == soc2/lsu/ldq_4_bits_failure;

end property;



property UPEC_lsu/ldq_5_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_5_bits_addr_bits == soc2/lsu/ldq_5_bits_addr_bits;

end property;



property UPEC_lsu/ldq_5_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_5_bits_addr_is_uncacheable == soc2/lsu/ldq_5_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_5_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_5_bits_addr_is_virtual == soc2/lsu/ldq_5_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_5_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_5_bits_failure == soc2/lsu/ldq_5_bits_failure;

end property;



property UPEC_lsu/ldq_6_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_6_bits_addr_bits == soc2/lsu/ldq_6_bits_addr_bits;

end property;



property UPEC_lsu/ldq_6_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_6_bits_addr_is_uncacheable == soc2/lsu/ldq_6_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_6_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_6_bits_addr_is_virtual == soc2/lsu/ldq_6_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_6_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_6_bits_failure == soc2/lsu/ldq_6_bits_failure;

end property;



property UPEC_lsu/ldq_7_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_7_bits_addr_bits == soc2/lsu/ldq_7_bits_addr_bits;

end property;



property UPEC_lsu/ldq_7_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_7_bits_addr_is_uncacheable == soc2/lsu/ldq_7_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_7_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_7_bits_addr_is_virtual == soc2/lsu/ldq_7_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_7_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_7_bits_failure == soc2/lsu/ldq_7_bits_failure;

end property;



property UPEC_lsu/ldq_8_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_8_bits_addr_bits == soc2/lsu/ldq_8_bits_addr_bits;

end property;



property UPEC_lsu/ldq_8_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_8_bits_addr_is_uncacheable == soc2/lsu/ldq_8_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_8_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_8_bits_addr_is_virtual == soc2/lsu/ldq_8_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_8_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_8_bits_failure == soc2/lsu/ldq_8_bits_failure;

end property;



property UPEC_lsu/ldq_9_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_9_bits_addr_bits == soc2/lsu/ldq_9_bits_addr_bits;

end property;



property UPEC_lsu/ldq_9_bits_addr_is_uncacheable_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_9_bits_addr_is_uncacheable == soc2/lsu/ldq_9_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_9_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_9_bits_addr_is_virtual == soc2/lsu/ldq_9_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_9_bits_failure_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/ldq_9_bits_failure == soc2/lsu/ldq_9_bits_failure;

end property;



property UPEC_lsu/mem_paddr_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/mem_paddr_0 == soc2/lsu/mem_paddr_0;

end property;



property UPEC_lsu/mem_tlb_miss_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/mem_tlb_miss_0 == soc2/lsu/mem_tlb_miss_0;

end property;



property UPEC_lsu/mem_tlb_uncacheable_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/mem_tlb_uncacheable_0 == soc2/lsu/mem_tlb_uncacheable_0;

end property;



property UPEC_lsu/mem_xcpt_causes_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/mem_xcpt_causes_0 == soc2/lsu/mem_xcpt_causes_0;

end property;



property UPEC_lsu/mem_xcpt_vaddrs_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/mem_xcpt_vaddrs_0 == soc2/lsu/mem_xcpt_vaddrs_0;

end property;



property UPEC_lsu/mem_xcpt_valids_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/mem_xcpt_valids_0 == soc2/lsu/mem_xcpt_valids_0;

end property;



property UPEC_lsu/s1_executing_loads_0_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_0 == soc2/lsu/s1_executing_loads_0;

end property;



property UPEC_lsu/s1_executing_loads_1_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_1 == soc2/lsu/s1_executing_loads_1;

end property;



property UPEC_lsu/s1_executing_loads_10_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_10 == soc2/lsu/s1_executing_loads_10;

end property;



property UPEC_lsu/s1_executing_loads_11_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_11 == soc2/lsu/s1_executing_loads_11;

end property;



property UPEC_lsu/s1_executing_loads_12_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_12 == soc2/lsu/s1_executing_loads_12;

end property;



property UPEC_lsu/s1_executing_loads_13_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_13 == soc2/lsu/s1_executing_loads_13;

end property;



property UPEC_lsu/s1_executing_loads_14_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_14 == soc2/lsu/s1_executing_loads_14;

end property;



property UPEC_lsu/s1_executing_loads_15_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_15 == soc2/lsu/s1_executing_loads_15;

end property;



property UPEC_lsu/s1_executing_loads_2_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_2 == soc2/lsu/s1_executing_loads_2;

end property;



property UPEC_lsu/s1_executing_loads_3_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_3 == soc2/lsu/s1_executing_loads_3;

end property;



property UPEC_lsu/s1_executing_loads_4_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_4 == soc2/lsu/s1_executing_loads_4;

end property;



property UPEC_lsu/s1_executing_loads_5_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_5 == soc2/lsu/s1_executing_loads_5;

end property;



property UPEC_lsu/s1_executing_loads_6_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_6 == soc2/lsu/s1_executing_loads_6;

end property;



property UPEC_lsu/s1_executing_loads_7_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_7 == soc2/lsu/s1_executing_loads_7;

end property;



property UPEC_lsu/s1_executing_loads_8_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_8 == soc2/lsu/s1_executing_loads_8;

end property;



property UPEC_lsu/s1_executing_loads_9_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/s1_executing_loads_9 == soc2/lsu/s1_executing_loads_9;

end property;



property UPEC_lsu/stq_0_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_0_bits_addr_bits == soc2/lsu/stq_0_bits_addr_bits;

end property;



property UPEC_lsu/stq_0_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_0_bits_addr_is_virtual == soc2/lsu/stq_0_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_0_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_0_bits_addr_valid == soc2/lsu/stq_0_bits_addr_valid;

end property;



property UPEC_lsu/stq_0_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_0_bits_data_bits == soc2/lsu/stq_0_bits_data_bits;

end property;



property UPEC_lsu/stq_10_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_10_bits_addr_bits == soc2/lsu/stq_10_bits_addr_bits;

end property;



property UPEC_lsu/stq_10_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_10_bits_addr_is_virtual == soc2/lsu/stq_10_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_10_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_10_bits_addr_valid == soc2/lsu/stq_10_bits_addr_valid;

end property;



property UPEC_lsu/stq_10_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_10_bits_data_bits == soc2/lsu/stq_10_bits_data_bits;

end property;



property UPEC_lsu/stq_11_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_11_bits_addr_bits == soc2/lsu/stq_11_bits_addr_bits;

end property;



property UPEC_lsu/stq_11_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_11_bits_addr_is_virtual == soc2/lsu/stq_11_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_11_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_11_bits_addr_valid == soc2/lsu/stq_11_bits_addr_valid;

end property;



property UPEC_lsu/stq_11_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_11_bits_data_bits == soc2/lsu/stq_11_bits_data_bits;

end property;



property UPEC_lsu/stq_12_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_12_bits_addr_bits == soc2/lsu/stq_12_bits_addr_bits;

end property;



property UPEC_lsu/stq_12_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_12_bits_addr_is_virtual == soc2/lsu/stq_12_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_12_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_12_bits_addr_valid == soc2/lsu/stq_12_bits_addr_valid;

end property;



property UPEC_lsu/stq_12_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_12_bits_data_bits == soc2/lsu/stq_12_bits_data_bits;

end property;



property UPEC_lsu/stq_13_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_13_bits_addr_bits == soc2/lsu/stq_13_bits_addr_bits;

end property;



property UPEC_lsu/stq_13_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_13_bits_addr_is_virtual == soc2/lsu/stq_13_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_13_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_13_bits_addr_valid == soc2/lsu/stq_13_bits_addr_valid;

end property;



property UPEC_lsu/stq_13_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_13_bits_data_bits == soc2/lsu/stq_13_bits_data_bits;

end property;



property UPEC_lsu/stq_14_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_14_bits_addr_bits == soc2/lsu/stq_14_bits_addr_bits;

end property;



property UPEC_lsu/stq_14_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_14_bits_addr_is_virtual == soc2/lsu/stq_14_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_14_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_14_bits_addr_valid == soc2/lsu/stq_14_bits_addr_valid;

end property;



property UPEC_lsu/stq_14_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_14_bits_data_bits == soc2/lsu/stq_14_bits_data_bits;

end property;



property UPEC_lsu/stq_15_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_15_bits_addr_bits == soc2/lsu/stq_15_bits_addr_bits;

end property;



property UPEC_lsu/stq_15_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_15_bits_addr_is_virtual == soc2/lsu/stq_15_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_15_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_15_bits_addr_valid == soc2/lsu/stq_15_bits_addr_valid;

end property;



property UPEC_lsu/stq_15_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_15_bits_data_bits == soc2/lsu/stq_15_bits_data_bits;

end property;



property UPEC_lsu/stq_1_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_1_bits_addr_bits == soc2/lsu/stq_1_bits_addr_bits;

end property;



property UPEC_lsu/stq_1_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_1_bits_addr_is_virtual == soc2/lsu/stq_1_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_1_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_1_bits_addr_valid == soc2/lsu/stq_1_bits_addr_valid;

end property;



property UPEC_lsu/stq_1_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_1_bits_data_bits == soc2/lsu/stq_1_bits_data_bits;

end property;



property UPEC_lsu/stq_2_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_2_bits_addr_bits == soc2/lsu/stq_2_bits_addr_bits;

end property;



property UPEC_lsu/stq_2_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_2_bits_addr_is_virtual == soc2/lsu/stq_2_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_2_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_2_bits_addr_valid == soc2/lsu/stq_2_bits_addr_valid;

end property;



property UPEC_lsu/stq_2_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_2_bits_data_bits == soc2/lsu/stq_2_bits_data_bits;

end property;



property UPEC_lsu/stq_3_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_3_bits_addr_bits == soc2/lsu/stq_3_bits_addr_bits;

end property;



property UPEC_lsu/stq_3_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_3_bits_addr_is_virtual == soc2/lsu/stq_3_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_3_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_3_bits_addr_valid == soc2/lsu/stq_3_bits_addr_valid;

end property;



property UPEC_lsu/stq_3_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_3_bits_data_bits == soc2/lsu/stq_3_bits_data_bits;

end property;



property UPEC_lsu/stq_4_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_4_bits_addr_bits == soc2/lsu/stq_4_bits_addr_bits;

end property;



property UPEC_lsu/stq_4_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_4_bits_addr_is_virtual == soc2/lsu/stq_4_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_4_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_4_bits_addr_valid == soc2/lsu/stq_4_bits_addr_valid;

end property;



property UPEC_lsu/stq_4_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_4_bits_data_bits == soc2/lsu/stq_4_bits_data_bits;

end property;



property UPEC_lsu/stq_5_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_5_bits_addr_bits == soc2/lsu/stq_5_bits_addr_bits;

end property;



property UPEC_lsu/stq_5_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_5_bits_addr_is_virtual == soc2/lsu/stq_5_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_5_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_5_bits_addr_valid == soc2/lsu/stq_5_bits_addr_valid;

end property;



property UPEC_lsu/stq_5_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_5_bits_data_bits == soc2/lsu/stq_5_bits_data_bits;

end property;



property UPEC_lsu/stq_6_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_6_bits_addr_bits == soc2/lsu/stq_6_bits_addr_bits;

end property;



property UPEC_lsu/stq_6_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_6_bits_addr_is_virtual == soc2/lsu/stq_6_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_6_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_6_bits_addr_valid == soc2/lsu/stq_6_bits_addr_valid;

end property;



property UPEC_lsu/stq_6_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_6_bits_data_bits == soc2/lsu/stq_6_bits_data_bits;

end property;



property UPEC_lsu/stq_7_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_7_bits_addr_bits == soc2/lsu/stq_7_bits_addr_bits;

end property;



property UPEC_lsu/stq_7_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_7_bits_addr_is_virtual == soc2/lsu/stq_7_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_7_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_7_bits_addr_valid == soc2/lsu/stq_7_bits_addr_valid;

end property;



property UPEC_lsu/stq_7_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_7_bits_data_bits == soc2/lsu/stq_7_bits_data_bits;

end property;



property UPEC_lsu/stq_8_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_8_bits_addr_bits == soc2/lsu/stq_8_bits_addr_bits;

end property;



property UPEC_lsu/stq_8_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_8_bits_addr_is_virtual == soc2/lsu/stq_8_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_8_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_8_bits_addr_valid == soc2/lsu/stq_8_bits_addr_valid;

end property;



property UPEC_lsu/stq_8_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_8_bits_data_bits == soc2/lsu/stq_8_bits_data_bits;

end property;



property UPEC_lsu/stq_9_bits_addr_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_9_bits_addr_bits == soc2/lsu/stq_9_bits_addr_bits;

end property;



property UPEC_lsu/stq_9_bits_addr_is_virtual_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_9_bits_addr_is_virtual == soc2/lsu/stq_9_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_9_bits_addr_valid_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_9_bits_addr_valid == soc2/lsu/stq_9_bits_addr_valid;

end property;



property UPEC_lsu/stq_9_bits_data_bits_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_9_bits_data_bits == soc2/lsu/stq_9_bits_data_bits;

end property;



property UPEC_lsu/stq_execute_head_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+3: soc1/lsu/stq_execute_head == soc2/lsu/stq_execute_head;

end property;



property UPEC_ptw/mem_resp_data_cycle3;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+3]: blackboxing;
    during[t, t+3]: secret_data_protected;
    during[t, t+3]: microequivalence == 1'b1;
    during[t, t+3]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

    during[t, t+3]: soc1/dcache/s2_data_word_0 != soc2/dcache/s2_data_word_0 ? soc1/dcache/s2_req_0_addr != soc2/dcache/s2_req_0_addr || soc1/dcache/s2_req_0_addr[31:12] == 20'h8abcd || soc2/dcache/s2_req_0_addr[31:12] == 20'h8abcd : 1'b1;

    at t+3: soc1/ptw/mem_resp_valid && soc2/ptw/mem_resp_valid;

prove:

    at t+3: soc1/ptw/mem_resp_data == soc2/ptw/mem_resp_data;

end property;




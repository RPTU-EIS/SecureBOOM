macro boolean lsu_req_is_tainted :=
	soc1/core/io_lsu_exe_0_req_bits_addr != soc2/core/io_lsu_exe_0_req_bits_addr && soc1/core/io_lsu_exe_0_req_bits_uop_rob_idx == soc2/core/io_lsu_exe_0_req_bits_uop_rob_idx
	?
	soc1/core/io_lsu_exe_0_req_bits_uop_taint && soc2/core/io_lsu_exe_0_req_bits_uop_taint
	:
	1'b1;
end macro;

property UPEC_array_0_0_R0_addr;
  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks;
  assume:
    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: tainted_lsu_resp_rob_idx_and_yrot_equal == 1'b1;
    at t: state_equivalence;
    at t: init_mispred_signals;
    at t+2: soc1/dcache/data/array_0_0/R0_en && soc2/dcache/data/array_0_0/R0_en;
    //if core requests different addresses, make sure they are tainted
    during[t, t+2]: lsu_req_is_tainted;
prove:
    at t+2: soc1/dcache/data/array_0_0/R0_addr == soc2/dcache/data/array_0_0/R0_addr;
end property;

property UPEC_array_0_0_R0_en;
  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks;
  assume:
    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: tainted_lsu_resp_rob_idx_and_yrot_equal == 1'b1;
    at t: state_equivalence;
    at t: init_mispred_signals;
    //if core requests different addresses, make sure they are tainted
    during[t, t+2]: lsu_req_is_tainted;
prove:
    at t+2: soc1/dcache/data/array_0_0/R0_en == soc2/dcache/data/array_0_0/R0_en;
end property;

property UPEC_array_0_0_W0_addr;
  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks;
  assume:
    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: tainted_lsu_resp_rob_idx_and_yrot_equal == 1'b1;
    at t: state_equivalence;
    at t: init_mispred_signals;
    at t+2: soc1/dcache/data/array_0_0/W0_en && soc2/dcache/data/array_0_0/W0_en;
    //if core requests different addresses, make sure they are tainted
    during[t, t+2]: lsu_req_is_tainted;
prove:
    at t+2: soc1/dcache/data/array_0_0/W0_addr == soc2/dcache/data/array_0_0/W0_addr;
end property;

property UPEC_array_0_0_W0_data_0;
  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks;
  assume:
    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: tainted_lsu_resp_rob_idx_and_yrot_equal == 1'b1;
    at t: state_equivalence;
    at t: init_mispred_signals;
    at t+2: soc1/dcache/data/array_0_0/W0_en && soc2/dcache/data/array_0_0/W0_en;
    //if core requests different addresses, make sure they are tainted
    during[t, t+2]: lsu_req_is_tainted;
prove:
    at t+2: soc1/dcache/data/array_0_0/W0_data_0 == soc2/dcache/data/array_0_0/W0_data_0;
end property;

property UPEC_array_0_0_W0_en;
  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks;
  assume:
    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: tainted_lsu_resp_rob_idx_and_yrot_equal == 1'b1;
    at t: state_equivalence;
    at t: init_mispred_signals;
    //if core requests different addresses, make sure they are tainted
    during[t, t+2]: lsu_req_is_tainted;
prove:
    at t+2: soc1/dcache/data/array_0_0/W0_en == soc2/dcache/data/array_0_0/W0_en;
end property;

property UPEC_array_0_0_W0_mask_0;
  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks;
  assume:
    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: tainted_lsu_resp_rob_idx_and_yrot_equal == 1'b1;
    at t: state_equivalence;
    at t: init_mispred_signals;
    at t+2: soc1/dcache/data/array_0_0/W0_en && soc2/dcache/data/array_0_0/W0_en;
    //if core requests different addresses, make sure they are tainted
    during[t, t+2]: lsu_req_is_tainted;
prove:
    at t+2: soc1/dcache/data/array_0_0/W0_mask_0 == soc2/dcache/data/array_0_0/W0_mask_0;
end property;

property UPEC_meta_0_RW0_addr;
  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks;
  assume:
    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: tainted_lsu_resp_rob_idx_and_yrot_equal == 1'b1;
    at t: state_equivalence;
    at t: init_mispred_signals;
    at t+2: soc1/dcache/meta_0/tag_array/RW0_en && soc2/dcache/meta_0/tag_array/RW0_en;
    //if core requests different addresses, make sure they are tainted
    during[t, t+2]: lsu_req_is_tainted;
prove:
    at t+2: soc1/dcache/meta_0/tag_array/RW0_addr == soc2/dcache/meta_0/tag_array/RW0_addr;
end property;

property UPEC_meta_0_RW0_en;
  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks;
  assume:
    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: tainted_lsu_resp_rob_idx_and_yrot_equal == 1'b1;
    at t: state_equivalence;
    at t: init_mispred_signals;
    //if core requests different addresses, make sure they are tainted
    during[t, t+2]: lsu_req_is_tainted;
prove:
    at t+2: soc1/dcache/meta_0/tag_array/RW0_en == soc2/dcache/meta_0/tag_array/RW0_en;
end property;

property UPEC_meta_0_RW0_wdata_0;
  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks;
  assume:
    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: tainted_lsu_resp_rob_idx_and_yrot_equal == 1'b1;
    at t: state_equivalence;
    at t: init_mispred_signals;
    at t+2: soc1/dcache/meta_0/tag_array/RW0_en && soc2/dcache/meta_0/tag_array/RW0_en;
    //if core requests different addresses, make sure they are tainted
    during[t, t+2]: lsu_req_is_tainted;
prove:
    at t+2: soc1/dcache/meta_0/tag_array/RW0_wdata_0 == soc2/dcache/meta_0/tag_array/RW0_wdata_0;
end property;

property UPEC_meta_0_RW0_wmask_0;
  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks;
  assume:
    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: tainted_lsu_resp_rob_idx_and_yrot_equal == 1'b1;
    at t: state_equivalence;
    at t: init_mispred_signals;
    at t+2: soc1/dcache/meta_0/tag_array/RW0_en && soc2/dcache/meta_0/tag_array/RW0_en;
    //if core requests different addresses, make sure they are tainted
    during[t, t+2]: lsu_req_is_tainted;
prove:
    at t+2: soc1/dcache/meta_0/tag_array/RW0_wmask_0 == soc2/dcache/meta_0/tag_array/RW0_wmask_0;
end property;

property UPEC_meta_0_RW0_wmode;
  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks;
  assume:
    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: tainted_lsu_resp_rob_idx_and_yrot_equal == 1'b1;
    at t: state_equivalence;
    at t: init_mispred_signals;
    at t+2: soc1/dcache/meta_0/tag_array/RW0_en && soc2/dcache/meta_0/tag_array/RW0_en;
    //if core requests different addresses, make sure they are tainted
    during[t, t+2]: lsu_req_is_tainted;
prove:
    at t+2: soc1/dcache/meta_0/tag_array/RW0_wmode == soc2/dcache/meta_0/tag_array/RW0_wmode;
end property;
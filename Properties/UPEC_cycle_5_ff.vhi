include "blackboxing.vli";
include "micro_soc_macro_p_alerts.vli";

property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_buffer_fin_in1_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_buffer_fin_in1 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_buffer_fin_in1;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_buffer_fin_in2_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_buffer_fin_in2 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_buffer_fin_in2;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fp_sdq/ram_data_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fp_sdq/ram_data == soc2/core/fp_pipeline/fpiu_unit/fp_sdq/ram_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/in_in1_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/in_in1 == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/in_in1;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/in_in2_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/in_in2 == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/in_in2;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/in_in3_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/in_in3 == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/in_in3;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu/in_in1_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu/in_in1 == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu/in_in1;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu/in_in2_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu/in_in2 == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu/in_in2;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/inPipe_bits_in1_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/inPipe_bits_in1 == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/inPipe_bits_in1;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/inPipe_bits_in2_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/inPipe_bits_in2 == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/inPipe_bits_in2;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/in_in1_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/in_in1 == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/in_in1;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/in_in2_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/in_in2 == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/in_in2;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/in_in3_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/in_in3 == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/in_in3;

end property;



property UPEC_core/jmp_unit/alu/r_data_2_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/jmp_unit/alu/r_data_2 == soc2/core/jmp_unit/alu/r_data_2;

end property;



property UPEC_core/jmp_unit/imul/imul/io_resp_bits_data_outPipe_bits_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/jmp_unit/imul/imul/io_resp_bits_data_outPipe_bits == soc2/core/jmp_unit/imul/imul/io_resp_bits_data_outPipe_bits;

end property;



property UPEC_core/jmp_unit/queue/ram_data_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/jmp_unit/queue/ram_data == soc2/core/jmp_unit/queue/ram_data;

end property;



property UPEC_core/jmp_unit/queue/ram_fflags_bits_flags_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/jmp_unit/queue/ram_fflags_bits_flags == soc2/core/jmp_unit/queue/ram_fflags_bits_flags;

end property;



property UPEC_core/rob/rob_fflags_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/rob/rob_fflags == soc2/core/rob/rob_fflags;

end property;



property UPEC_core/rob/rob_fflags_1_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/core/rob/rob_fflags_1 == soc2/core/rob/rob_fflags_1;

end property;



property UPEC_lsu/ldq_0_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_0_bits_order_fail == soc2/lsu/ldq_0_bits_order_fail;

end property;



property UPEC_lsu/ldq_10_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_10_bits_order_fail == soc2/lsu/ldq_10_bits_order_fail;

end property;



property UPEC_lsu/ldq_11_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_11_bits_order_fail == soc2/lsu/ldq_11_bits_order_fail;

end property;



property UPEC_lsu/ldq_12_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_12_bits_order_fail == soc2/lsu/ldq_12_bits_order_fail;

end property;



property UPEC_lsu/ldq_13_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_13_bits_order_fail == soc2/lsu/ldq_13_bits_order_fail;

end property;



property UPEC_lsu/ldq_14_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_14_bits_order_fail == soc2/lsu/ldq_14_bits_order_fail;

end property;



property UPEC_lsu/ldq_15_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_15_bits_order_fail == soc2/lsu/ldq_15_bits_order_fail;

end property;



property UPEC_lsu/ldq_1_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_1_bits_order_fail == soc2/lsu/ldq_1_bits_order_fail;

end property;



property UPEC_lsu/ldq_2_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_2_bits_order_fail == soc2/lsu/ldq_2_bits_order_fail;

end property;



property UPEC_lsu/ldq_3_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_3_bits_order_fail == soc2/lsu/ldq_3_bits_order_fail;

end property;



property UPEC_lsu/ldq_4_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_4_bits_order_fail == soc2/lsu/ldq_4_bits_order_fail;

end property;



property UPEC_lsu/ldq_5_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_5_bits_order_fail == soc2/lsu/ldq_5_bits_order_fail;

end property;



property UPEC_lsu/ldq_6_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_6_bits_order_fail == soc2/lsu/ldq_6_bits_order_fail;

end property;



property UPEC_lsu/ldq_7_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_7_bits_order_fail == soc2/lsu/ldq_7_bits_order_fail;

end property;



property UPEC_lsu/ldq_8_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_8_bits_order_fail == soc2/lsu/ldq_8_bits_order_fail;

end property;



property UPEC_lsu/ldq_9_bits_order_fail_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/ldq_9_bits_order_fail == soc2/lsu/ldq_9_bits_order_fail;

end property;



property UPEC_lsu/r_xcpt_cause_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/r_xcpt_cause == soc2/lsu/r_xcpt_cause;

end property;



property UPEC_lsu/r_xcpt_uop_br_mask_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/r_xcpt_uop_br_mask == soc2/lsu/r_xcpt_uop_br_mask;

end property;



property UPEC_lsu/r_xcpt_uop_rob_idx_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/r_xcpt_uop_rob_idx == soc2/lsu/r_xcpt_uop_rob_idx;

end property;



property UPEC_lsu/r_xcpt_valid_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/lsu/r_xcpt_valid == soc2/lsu/r_xcpt_valid;

end property;



property UPEC_ptw/mem_resp_data_ff_4_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+1]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

    during[t, t+1]: soc1/dcache/s2_data_word_0 != soc2/dcache/s2_data_word_0 ? soc1/dcache/s2_req_0_addr != soc2/dcache/s2_req_0_addr || soc1/dcache/s2_req_0_addr[31:12] == 20'h8abcd || soc2/dcache/s2_req_0_addr[31:12] == 20'h8abcd : 1'b1;
    
    at t+1: soc1/ptw/mem_resp_valid && soc2/ptw/mem_resp_valid;

prove:

    at t+1: soc1/ptw/mem_resp_data == soc2/ptw/mem_resp_data;

end property;




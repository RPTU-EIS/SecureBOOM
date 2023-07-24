include "blackboxing.vli";
include "micro_soc_macro_p_alerts.vli";

property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_data_ff_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+4]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_data == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_exc_ff_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+4]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_exc_ff_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+4]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_toint_ff_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+4]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_toint == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_toint;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_data_ff_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+4]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_data == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_exc_ff_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+4]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_data_ff_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+4]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_data == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_exc_ff_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+4]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_exc;

end property;




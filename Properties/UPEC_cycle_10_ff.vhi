include "blackboxing.vli";
include "micro_soc_macro_p_alerts.vli";

property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isInf_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isInf == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isInf;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isNaN_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isNaN == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isNaN;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isZero_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isZero == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isZero;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sExp_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sExp == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sExp;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sig_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sig == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sig;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sign_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sign == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sign;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_invalidExc_b_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_invalidExc_b == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_invalidExc_b;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_data_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_data == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_exc_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/io_out_b_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_exc_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_toint_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_toint == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_toint;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_exc_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_toint_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_toint == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_2_toint;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_data_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_data == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_exc_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_1_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_data_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_data == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_exc_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isInf_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isInf == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isInf;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isNaN_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isNaN == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isNaN;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isZero_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isZero == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isZero;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sExp_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sExp == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sExp;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sig_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sig == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sig;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sign_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sign == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sign;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_invalidExc_b_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_invalidExc_b == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_invalidExc_b;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_data_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_data == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_exc_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/io_out_b_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/queue/ram_data_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/queue/ram_data == soc2/core/fp_pipeline/fpiu_unit/queue/ram_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/queue/ram_fflags_bits_flags_ff_4_cycle6;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+6]: blackboxing;
    during[t, t+6]: secret_data_protected;
    during[t, t+6]: microequivalence == 1'b1;
    during[t, t+6]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+6]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+6: soc1/core/fp_pipeline/fpiu_unit/queue/ram_fflags_bits_flags == soc2/core/fp_pipeline/fpiu_unit/queue/ram_fflags_bits_flags;

end property;




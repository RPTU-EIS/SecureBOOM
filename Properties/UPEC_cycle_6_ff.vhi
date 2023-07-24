include "blackboxing.vli";
include "micro_soc_macro_p_alerts.vli";

property UPEC_core/csr/reg_fflags_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/csr/reg_fflags == soc2/core/csr/reg_fflags;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/ER1_B_sqrt_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/ER1_B_sqrt == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/ER1_B_sqrt;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_A_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_A == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_A;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractA_PA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractA_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractA_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractR0_A_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractR0_A == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractR0_A;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/hiSqrR0_A_sqrt_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/hiSqrR0_A_sqrt == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/hiSqrR0_A_sqrt;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9A_A_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9A_A == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9A_A;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9B_A_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9B_A == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9B_A;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/partNegSigma0_A_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/partNegSigma0_A == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/partNegSigma0_A;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_a_s1_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_a_s1 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_a_s1;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_b_s1_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_b_s1 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_b_s1;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/val_s1_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/val_s1 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/val_s1;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_exc_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_toint_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_toint == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_toint;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_data_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_data == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_exc_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b_fast_forward_4_cycle2;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+2]: blackboxing;
    during[t, t+2]: secret_data_protected;
    during[t, t+2]: microequivalence == 1'b1;
    during[t, t+2]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+2]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+2: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b;

end property;




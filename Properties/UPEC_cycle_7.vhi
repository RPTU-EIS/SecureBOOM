include "blackboxing.vli";
include "micro_soc_macro_p_alerts.vli";

property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/ER1_B_sqrt_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/ER1_B_sqrt == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/ER1_B_sqrt;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/bit0FractA_PB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/bit0FractA_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/bit0FractA_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/bit0FractA_PC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/bit0FractA_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/bit0FractA_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_A_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_A == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_A;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_B_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_B == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_B;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_C_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_C == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/cycleNum_C;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractA_PA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractA_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractA_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractB_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractR0_A_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractR0_A == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/fractR0_A;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/hiSqrR0_A_sqrt_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/hiSqrR0_A_sqrt == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/hiSqrR0_A_sqrt;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isInf_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNaN_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNegRemT_E_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNegRemT_E == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isNegRemT_E;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZeroRemT_E_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZeroRemT_E == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZeroRemT_E;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/isZero_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/majorExc_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9A_A_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9A_A == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9A_A;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9B_A_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9B_A == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/nextMulAdd9B_A;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/partNegSigma0_A_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/partNegSigma0_A == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/partNegSigma0_A;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/roundingMode_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sExp_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sigT_E_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sigT_E == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sigT_E;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sigXN_C_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sigXN_C == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sigXN_C;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sign_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/sqrtOp_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/u_C_sqrt_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/u_C_sqrt == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/u_C_sqrt;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PA == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PB == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PC == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/ds/divSqrtRecF64ToRaw/valid_PC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_a_s1_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_a_s1 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_a_s1;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_a_s2_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_a_s2 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_a_s2;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_b_s1_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_b_s1 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_b_s1;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_b_s2_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_b_s2 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_b_s2;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_result_s3_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_result_s3 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/reg_result_s3;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/val_s1_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/val_s1 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/val_s1;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/val_s2_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/val_s2 == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/divsqrt/mul/val_s2;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_buffer_val_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_buffer_val == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_buffer_val;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_fin_rm_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_fin_rm == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_fin_rm;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_fin_typeTagIn_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_fin_typeTagIn == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_fin_typeTagIn;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_killed_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_killed == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_killed;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_br_mask_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_br_mask == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_br_mask;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_dst_rtype_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_dst_rtype == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_dst_rtype;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_fp_val_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_fp_val == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_fp_val;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_is_amo_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_is_amo == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_is_amo;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_pdst_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_pdst == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_pdst;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_rob_idx_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_rob_idx == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_rob_idx;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_taint_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_taint == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_taint;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_uopc_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_uopc == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_uopc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_uses_ldq_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_uses_ldq == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_uses_ldq;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_uses_stq_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_uses_stq == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_uses_stq;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_yrot_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_yrot == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_uop_yrot;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_val_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_val == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_divsqrt_val;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_flags_double_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_flags_double == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_flags_double;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_br_mask_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_br_mask == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_br_mask;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_dst_rtype_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_dst_rtype == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_dst_rtype;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_fp_val_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_fp_val == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_fp_val;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_is_amo_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_is_amo == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_is_amo;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_pdst_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_pdst == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_pdst;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_rob_idx_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_rob_idx == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_rob_idx;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_taint_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_taint == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_taint;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_uopc_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_uopc == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_uopc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_uses_ldq_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_uses_ldq == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_uses_ldq;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_uses_stq_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_uses_stq == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_uses_stq;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_yrot_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_yrot == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_uop_yrot;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_val_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_val == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_val;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_wdata_double_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_wdata_double == soc2/core/fp_pipeline/fpiu_unit/fdivsqrt/r_out_wdata_double;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isInf_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isInf == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isInf;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isNaN_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isNaN == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isNaN;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isZero_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isZero == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_isZero;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sExp_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sExp == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sExp;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sig_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sig == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sig;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sign_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sign == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_in_b_sign;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_invalidExc_b_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_invalidExc_b == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/dfma/fma/roundRawFNToRecFN_io_invalidExc_b;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_exc_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_toint_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_toint == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_1_toint;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_exc_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_toint_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_toint == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpiu_outPipe_bits_toint;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_data_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_data == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_exc_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_b_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_data_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_data == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_exc_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_exc == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/fpmu/io_out_outPipe_bits_exc;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CDom_CAlignDist;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_CIsDominant;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_bit0AlignedSigC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_doSubMags;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_highAlignedSigC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isInfC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNAOrB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isNaNC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isSigNaNAny;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroA;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroB;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_isZeroC;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_sExpSum;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_fromPreMul_b_signProd;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/mulAddRecFNToRaw_postMul_io_mulAddResult_b;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isInf_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isInf == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isInf;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isNaN_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isNaN == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isNaN;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isZero_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isZero == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_isZero;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sExp_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sExp == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sExp;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sig_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sig == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sig;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sign_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sign == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_in_b_sign;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_invalidExc_b_cycle7;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+7]: blackboxing;
    during[t, t+7]: secret_data_protected;
    during[t, t+7]: microequivalence == 1'b1;
    during[t, t+7]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+7: soc1/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_invalidExc_b == soc2/core/fp_pipeline/fpiu_unit/fpu/fpu/sfma/fma/roundRawFNToRecFN_io_invalidExc_b;

end property;




include "blackboxing.vli";
include "micro_soc_macro_p_alerts.vli";

property UPEC_core/fp_pipeline/fpiu_unit/queue/ram_data_ff_4_cycle5;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+5]: blackboxing;
    during[t, t+5]: secret_data_protected;
    during[t, t+5]: microequivalence == 1'b1;
    during[t, t+5]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+5]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+5: soc1/core/fp_pipeline/fpiu_unit/queue/ram_data == soc2/core/fp_pipeline/fpiu_unit/queue/ram_data;

end property;



property UPEC_core/fp_pipeline/fpiu_unit/queue/ram_fflags_bits_flags_ff_4_cycle5;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+5]: blackboxing;
    during[t, t+5]: secret_data_protected;
    during[t, t+5]: microequivalence == 1'b1;
    during[t, t+5]: pnr_between_head_and_root_id == 1'b1;
    during[t, t+5]: fast_forward_assumptions == 1'b1;

    at t: state_equivalence_fast_forward;
    at t: init_mispred_signals;

prove:

    at t+5: soc1/core/fp_pipeline/fpiu_unit/queue/ram_fflags_bits_flags == soc2/core/fp_pipeline/fpiu_unit/queue/ram_fflags_bits_flags;

end property;




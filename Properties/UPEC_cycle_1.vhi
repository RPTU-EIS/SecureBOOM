include "blackboxing.vli";
include "micro_soc_macro_p_alerts.vli";

property UPEC_dcache/data/io_resp_0_0_REG_cycle1;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+1]: blackboxing;
    during[t, t+1]: secret_data_protected;
    during[t, t+1]: microequivalence == 1'b1;
    during[t, t+1]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+1: soc1/dcache/data/io_resp_0_0_REG == soc2/dcache/data/io_resp_0_0_REG;

end property;




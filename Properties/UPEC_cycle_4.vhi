include "blackboxing.vli";
include "micro_soc_macro_p_alerts.vli";

property UPEC_core/csr/large__cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/large_ == soc2/core/csr/large_;

end property;



property UPEC_core/csr/large_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/large_1 == soc2/core/csr/large_1;

end property;



property UPEC_core/csr/large_2_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/large_2 == soc2/core/csr/large_2;

end property;



property UPEC_core/csr/large_3_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/large_3 == soc2/core/csr/large_3;

end property;



property UPEC_core/csr/large_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/large_4 == soc2/core/csr/large_4;

end property;



property UPEC_core/csr/large_5_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/large_5 == soc2/core/csr/large_5;

end property;



property UPEC_core/csr/large_6_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/large_6 == soc2/core/csr/large_6;

end property;



property UPEC_core/csr/large_7_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/large_7 == soc2/core/csr/large_7;

end property;



property UPEC_core/csr/reg_custom_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_custom_0 == soc2/core/csr/reg_custom_0;

end property;



property UPEC_core/csr/reg_dcsr_ebreakm_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_dcsr_ebreakm == soc2/core/csr/reg_dcsr_ebreakm;

end property;



property UPEC_core/csr/reg_dcsr_ebreaks_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_dcsr_ebreaks == soc2/core/csr/reg_dcsr_ebreaks;

end property;



property UPEC_core/csr/reg_dcsr_ebreaku_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_dcsr_ebreaku == soc2/core/csr/reg_dcsr_ebreaku;

end property;



property UPEC_core/csr/reg_dcsr_prv_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_dcsr_prv == soc2/core/csr/reg_dcsr_prv;

end property;



property UPEC_core/csr/reg_dcsr_step_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_dcsr_step == soc2/core/csr/reg_dcsr_step;

end property;



property UPEC_core/csr/reg_dpc_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_dpc == soc2/core/csr/reg_dpc;

end property;



property UPEC_core/csr/reg_dscratch_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_dscratch == soc2/core/csr/reg_dscratch;

end property;



property UPEC_core/csr/reg_fflags_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_fflags == soc2/core/csr/reg_fflags;

end property;



property UPEC_core/csr/reg_frm_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_frm == soc2/core/csr/reg_frm;

end property;



property UPEC_core/csr/reg_hpmevent_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_hpmevent_0 == soc2/core/csr/reg_hpmevent_0;

end property;



property UPEC_core/csr/reg_hpmevent_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_hpmevent_1 == soc2/core/csr/reg_hpmevent_1;

end property;



property UPEC_core/csr/reg_hpmevent_2_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_hpmevent_2 == soc2/core/csr/reg_hpmevent_2;

end property;



property UPEC_core/csr/reg_hpmevent_3_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_hpmevent_3 == soc2/core/csr/reg_hpmevent_3;

end property;



property UPEC_core/csr/reg_hpmevent_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_hpmevent_4 == soc2/core/csr/reg_hpmevent_4;

end property;



property UPEC_core/csr/reg_hpmevent_5_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_hpmevent_5 == soc2/core/csr/reg_hpmevent_5;

end property;



property UPEC_core/csr/reg_mcause_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mcause == soc2/core/csr/reg_mcause;

end property;



property UPEC_core/csr/reg_mcounteren_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mcounteren == soc2/core/csr/reg_mcounteren;

end property;



property UPEC_core/csr/reg_mcountinhibit_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mcountinhibit == soc2/core/csr/reg_mcountinhibit;

end property;



property UPEC_core/csr/reg_medeleg_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_medeleg == soc2/core/csr/reg_medeleg;

end property;



property UPEC_core/csr/reg_mepc_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mepc == soc2/core/csr/reg_mepc;

end property;



property UPEC_core/csr/reg_mideleg_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mideleg == soc2/core/csr/reg_mideleg;

end property;



property UPEC_core/csr/reg_mie_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mie == soc2/core/csr/reg_mie;

end property;



property UPEC_core/csr/reg_mip_seip_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mip_seip == soc2/core/csr/reg_mip_seip;

end property;



property UPEC_core/csr/reg_mip_ssip_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mip_ssip == soc2/core/csr/reg_mip_ssip;

end property;



property UPEC_core/csr/reg_mip_stip_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mip_stip == soc2/core/csr/reg_mip_stip;

end property;



property UPEC_core/csr/reg_mscratch_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mscratch == soc2/core/csr/reg_mscratch;

end property;



property UPEC_core/csr/reg_mstatus_fs_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_fs == soc2/core/csr/reg_mstatus_fs;

end property;



property UPEC_core/csr/reg_mstatus_mie_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_mie == soc2/core/csr/reg_mstatus_mie;

end property;



property UPEC_core/csr/reg_mstatus_mpie_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_mpie == soc2/core/csr/reg_mstatus_mpie;

end property;



property UPEC_core/csr/reg_mstatus_mpp_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_mpp == soc2/core/csr/reg_mstatus_mpp;

end property;



property UPEC_core/csr/reg_mstatus_mprv_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_mprv == soc2/core/csr/reg_mstatus_mprv;

end property;



property UPEC_core/csr/reg_mstatus_mxr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_mxr == soc2/core/csr/reg_mstatus_mxr;

end property;



property UPEC_core/csr/reg_mstatus_sie_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_sie == soc2/core/csr/reg_mstatus_sie;

end property;



property UPEC_core/csr/reg_mstatus_spie_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_spie == soc2/core/csr/reg_mstatus_spie;

end property;



property UPEC_core/csr/reg_mstatus_spp_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_spp == soc2/core/csr/reg_mstatus_spp;

end property;



property UPEC_core/csr/reg_mstatus_sum_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_sum == soc2/core/csr/reg_mstatus_sum;

end property;



property UPEC_core/csr/reg_mstatus_tsr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_tsr == soc2/core/csr/reg_mstatus_tsr;

end property;



property UPEC_core/csr/reg_mstatus_tvm_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_tvm == soc2/core/csr/reg_mstatus_tvm;

end property;



property UPEC_core/csr/reg_mstatus_tw_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mstatus_tw == soc2/core/csr/reg_mstatus_tw;

end property;



property UPEC_core/csr/reg_mtval_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mtval == soc2/core/csr/reg_mtval;

end property;



property UPEC_core/csr/reg_mtvec_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_mtvec == soc2/core/csr/reg_mtvec;

end property;



property UPEC_core/csr/reg_pmp_0_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_0_addr == soc2/core/csr/reg_pmp_0_addr;

end property;



property UPEC_core/csr/reg_pmp_0_cfg_a_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_0_cfg_a == soc2/core/csr/reg_pmp_0_cfg_a;

end property;



property UPEC_core/csr/reg_pmp_0_cfg_l_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_0_cfg_l == soc2/core/csr/reg_pmp_0_cfg_l;

end property;



property UPEC_core/csr/reg_pmp_0_cfg_r_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_0_cfg_r == soc2/core/csr/reg_pmp_0_cfg_r;

end property;



property UPEC_core/csr/reg_pmp_0_cfg_w_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_0_cfg_w == soc2/core/csr/reg_pmp_0_cfg_w;

end property;



property UPEC_core/csr/reg_pmp_0_cfg_x_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_0_cfg_x == soc2/core/csr/reg_pmp_0_cfg_x;

end property;



property UPEC_core/csr/reg_pmp_1_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_1_addr == soc2/core/csr/reg_pmp_1_addr;

end property;



property UPEC_core/csr/reg_pmp_1_cfg_a_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_1_cfg_a == soc2/core/csr/reg_pmp_1_cfg_a;

end property;



property UPEC_core/csr/reg_pmp_1_cfg_l_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_1_cfg_l == soc2/core/csr/reg_pmp_1_cfg_l;

end property;



property UPEC_core/csr/reg_pmp_1_cfg_r_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_1_cfg_r == soc2/core/csr/reg_pmp_1_cfg_r;

end property;



property UPEC_core/csr/reg_pmp_1_cfg_w_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_1_cfg_w == soc2/core/csr/reg_pmp_1_cfg_w;

end property;



property UPEC_core/csr/reg_pmp_1_cfg_x_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_1_cfg_x == soc2/core/csr/reg_pmp_1_cfg_x;

end property;



property UPEC_core/csr/reg_pmp_2_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_2_addr == soc2/core/csr/reg_pmp_2_addr;

end property;



property UPEC_core/csr/reg_pmp_2_cfg_a_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_2_cfg_a == soc2/core/csr/reg_pmp_2_cfg_a;

end property;



property UPEC_core/csr/reg_pmp_2_cfg_l_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_2_cfg_l == soc2/core/csr/reg_pmp_2_cfg_l;

end property;



property UPEC_core/csr/reg_pmp_2_cfg_r_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_2_cfg_r == soc2/core/csr/reg_pmp_2_cfg_r;

end property;



property UPEC_core/csr/reg_pmp_2_cfg_w_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_2_cfg_w == soc2/core/csr/reg_pmp_2_cfg_w;

end property;



property UPEC_core/csr/reg_pmp_2_cfg_x_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_2_cfg_x == soc2/core/csr/reg_pmp_2_cfg_x;

end property;



property UPEC_core/csr/reg_pmp_3_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_3_addr == soc2/core/csr/reg_pmp_3_addr;

end property;



property UPEC_core/csr/reg_pmp_3_cfg_a_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_3_cfg_a == soc2/core/csr/reg_pmp_3_cfg_a;

end property;



property UPEC_core/csr/reg_pmp_3_cfg_l_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_3_cfg_l == soc2/core/csr/reg_pmp_3_cfg_l;

end property;



property UPEC_core/csr/reg_pmp_3_cfg_r_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_3_cfg_r == soc2/core/csr/reg_pmp_3_cfg_r;

end property;



property UPEC_core/csr/reg_pmp_3_cfg_w_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_3_cfg_w == soc2/core/csr/reg_pmp_3_cfg_w;

end property;



property UPEC_core/csr/reg_pmp_3_cfg_x_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_3_cfg_x == soc2/core/csr/reg_pmp_3_cfg_x;

end property;



property UPEC_core/csr/reg_pmp_4_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_4_addr == soc2/core/csr/reg_pmp_4_addr;

end property;



property UPEC_core/csr/reg_pmp_4_cfg_a_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_4_cfg_a == soc2/core/csr/reg_pmp_4_cfg_a;

end property;



property UPEC_core/csr/reg_pmp_4_cfg_l_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_4_cfg_l == soc2/core/csr/reg_pmp_4_cfg_l;

end property;



property UPEC_core/csr/reg_pmp_4_cfg_r_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_4_cfg_r == soc2/core/csr/reg_pmp_4_cfg_r;

end property;



property UPEC_core/csr/reg_pmp_4_cfg_w_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_4_cfg_w == soc2/core/csr/reg_pmp_4_cfg_w;

end property;



property UPEC_core/csr/reg_pmp_4_cfg_x_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_4_cfg_x == soc2/core/csr/reg_pmp_4_cfg_x;

end property;



property UPEC_core/csr/reg_pmp_5_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_5_addr == soc2/core/csr/reg_pmp_5_addr;

end property;



property UPEC_core/csr/reg_pmp_5_cfg_a_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_5_cfg_a == soc2/core/csr/reg_pmp_5_cfg_a;

end property;



property UPEC_core/csr/reg_pmp_5_cfg_l_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_5_cfg_l == soc2/core/csr/reg_pmp_5_cfg_l;

end property;



property UPEC_core/csr/reg_pmp_5_cfg_r_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_5_cfg_r == soc2/core/csr/reg_pmp_5_cfg_r;

end property;



property UPEC_core/csr/reg_pmp_5_cfg_w_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_5_cfg_w == soc2/core/csr/reg_pmp_5_cfg_w;

end property;



property UPEC_core/csr/reg_pmp_5_cfg_x_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_5_cfg_x == soc2/core/csr/reg_pmp_5_cfg_x;

end property;



property UPEC_core/csr/reg_pmp_6_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_6_addr == soc2/core/csr/reg_pmp_6_addr;

end property;



property UPEC_core/csr/reg_pmp_6_cfg_a_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_6_cfg_a == soc2/core/csr/reg_pmp_6_cfg_a;

end property;



property UPEC_core/csr/reg_pmp_6_cfg_l_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_6_cfg_l == soc2/core/csr/reg_pmp_6_cfg_l;

end property;



property UPEC_core/csr/reg_pmp_6_cfg_r_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_6_cfg_r == soc2/core/csr/reg_pmp_6_cfg_r;

end property;



property UPEC_core/csr/reg_pmp_6_cfg_w_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_6_cfg_w == soc2/core/csr/reg_pmp_6_cfg_w;

end property;



property UPEC_core/csr/reg_pmp_6_cfg_x_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_6_cfg_x == soc2/core/csr/reg_pmp_6_cfg_x;

end property;



property UPEC_core/csr/reg_pmp_7_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_7_addr == soc2/core/csr/reg_pmp_7_addr;

end property;



property UPEC_core/csr/reg_pmp_7_cfg_a_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_7_cfg_a == soc2/core/csr/reg_pmp_7_cfg_a;

end property;



property UPEC_core/csr/reg_pmp_7_cfg_l_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_7_cfg_l == soc2/core/csr/reg_pmp_7_cfg_l;

end property;



property UPEC_core/csr/reg_pmp_7_cfg_r_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_7_cfg_r == soc2/core/csr/reg_pmp_7_cfg_r;

end property;



property UPEC_core/csr/reg_pmp_7_cfg_w_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_7_cfg_w == soc2/core/csr/reg_pmp_7_cfg_w;

end property;



property UPEC_core/csr/reg_pmp_7_cfg_x_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_pmp_7_cfg_x == soc2/core/csr/reg_pmp_7_cfg_x;

end property;



property UPEC_core/csr/reg_satp_mode_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_satp_mode == soc2/core/csr/reg_satp_mode;

end property;



property UPEC_core/csr/reg_satp_ppn_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_satp_ppn == soc2/core/csr/reg_satp_ppn;

end property;



property UPEC_core/csr/reg_scause_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_scause == soc2/core/csr/reg_scause;

end property;



property UPEC_core/csr/reg_scounteren_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_scounteren == soc2/core/csr/reg_scounteren;

end property;



property UPEC_core/csr/reg_sepc_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_sepc == soc2/core/csr/reg_sepc;

end property;



property UPEC_core/csr/reg_sscratch_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_sscratch == soc2/core/csr/reg_sscratch;

end property;



property UPEC_core/csr/reg_stval_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_stval == soc2/core/csr/reg_stval;

end property;



property UPEC_core/csr/reg_stvec_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/reg_stvec == soc2/core/csr/reg_stvec;

end property;



property UPEC_core/csr/small__cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/small_ == soc2/core/csr/small_;

end property;



property UPEC_core/csr/small_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/small_1 == soc2/core/csr/small_1;

end property;



property UPEC_core/csr/small_2_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/small_2 == soc2/core/csr/small_2;

end property;



property UPEC_core/csr/small_3_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/small_3 == soc2/core/csr/small_3;

end property;



property UPEC_core/csr/small_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/small_4 == soc2/core/csr/small_4;

end property;



property UPEC_core/csr/small_5_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/small_5 == soc2/core/csr/small_5;

end property;



property UPEC_core/csr/small_6_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/small_6 == soc2/core/csr/small_6;

end property;



property UPEC_core/csr/small_7_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/csr/small_7 == soc2/core/csr/small_7;

end property;



property UPEC_core/fp_pipeline/fregister_read/exe_reg_rs1_data_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/fp_pipeline/fregister_read/exe_reg_rs1_data_0 == soc2/core/fp_pipeline/fregister_read/exe_reg_rs1_data_0;

end property;



property UPEC_core/fp_pipeline/fregister_read/exe_reg_rs2_data_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/fp_pipeline/fregister_read/exe_reg_rs2_data_0 == soc2/core/fp_pipeline/fregister_read/exe_reg_rs2_data_0;

end property;



property UPEC_core/fp_pipeline/fregister_read/exe_reg_rs3_data_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/fp_pipeline/fregister_read/exe_reg_rs3_data_0 == soc2/core/fp_pipeline/fregister_read/exe_reg_rs3_data_0;

end property;



property UPEC_core/jmp_unit/alu/r_data_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/jmp_unit/alu/r_data_1 == soc2/core/jmp_unit/alu/r_data_1;

end property;



property UPEC_core/jmp_unit/ifpu/ifpu/io_out_b_data_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/jmp_unit/ifpu/ifpu/io_out_b_data == soc2/core/jmp_unit/ifpu/ifpu/io_out_b_data;

end property;



property UPEC_core/jmp_unit/ifpu/ifpu/io_out_b_exc_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/jmp_unit/ifpu/ifpu/io_out_b_exc == soc2/core/jmp_unit/ifpu/ifpu/io_out_b_exc;

end property;



property UPEC_core/jmp_unit/imul/imul/io_resp_bits_data_b_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/core/jmp_unit/imul/imul/io_resp_bits_data_b == soc2/core/jmp_unit/imul/imul/io_resp_bits_data_b;

end property;



property UPEC_dcache/REG_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/REG == soc2/dcache/REG;

end property;



property UPEC_dcache/REG_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/REG_1 == soc2/dcache/REG_1;

end property;



property UPEC_dcache/data/io_resp_0_1_REG_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/data/io_resp_0_1_REG == soc2/dcache/data/io_resp_0_1_REG;

end property;



property UPEC_dcache/data/io_resp_0_2_REG_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/data/io_resp_0_2_REG == soc2/dcache/data/io_resp_0_2_REG;

end property;



property UPEC_dcache/data/io_resp_0_3_REG_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/data/io_resp_0_3_REG == soc2/dcache/data/io_resp_0_3_REG;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_addr_pipe_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_addr_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_addr_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_en_pipe_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_en_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_0/ram_RW_0_r_en_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_addr_pipe_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_addr_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_addr_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_en_pipe_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_en_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_1/ram_RW_0_r_en_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_addr_pipe_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_addr_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_addr_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_en_pipe_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_en_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_2/ram_RW_0_r_en_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_addr_pipe_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_addr_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_addr_pipe_0;

end property;



property UPEC_dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_en_pipe_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_en_pipe_0 == soc2/dcache/meta_0/tag_array/tag_array_ext/mem_0_3/ram_RW_0_r_en_pipe_0;

end property;



property UPEC_dcache/s1_req_0_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_addr == soc2/dcache/s1_req_0_addr;

end property;



property UPEC_dcache/s1_req_0_data_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_data == soc2/dcache/s1_req_0_data;

end property;



property UPEC_dcache/s1_req_0_is_hella_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_is_hella == soc2/dcache/s1_req_0_is_hella;

end property;



property UPEC_dcache/s1_req_0_uop_br_mask_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_uop_br_mask == soc2/dcache/s1_req_0_uop_br_mask;

end property;



property UPEC_dcache/s1_req_0_uop_is_amo_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_uop_is_amo == soc2/dcache/s1_req_0_uop_is_amo;

end property;



property UPEC_dcache/s1_req_0_uop_ldq_idx_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_uop_ldq_idx == soc2/dcache/s1_req_0_uop_ldq_idx;

end property;



property UPEC_dcache/s1_req_0_uop_mem_cmd_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_uop_mem_cmd == soc2/dcache/s1_req_0_uop_mem_cmd;

end property;



property UPEC_dcache/s1_req_0_uop_mem_signed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_uop_mem_signed == soc2/dcache/s1_req_0_uop_mem_signed;

end property;



property UPEC_dcache/s1_req_0_uop_mem_size_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_uop_mem_size == soc2/dcache/s1_req_0_uop_mem_size;

end property;



property UPEC_dcache/s1_req_0_uop_stq_idx_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_uop_stq_idx == soc2/dcache/s1_req_0_uop_stq_idx;

end property;



property UPEC_dcache/s1_req_0_uop_uses_ldq_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_uop_uses_ldq == soc2/dcache/s1_req_0_uop_uses_ldq;

end property;



property UPEC_dcache/s1_req_0_uop_uses_stq_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_req_0_uop_uses_stq == soc2/dcache/s1_req_0_uop_uses_stq;

end property;



property UPEC_dcache/s1_send_resp_or_nack_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_send_resp_or_nack_0 == soc2/dcache/s1_send_resp_or_nack_0;

end property;



property UPEC_dcache/s1_type_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s1_type == soc2/dcache/s1_type;

end property;



property UPEC_dcache/s1_valid_REG_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

    at t+4: soc1/dcache/s1_valid_REG && soc2/dcache/s1_valid_REG;

prove:

    at t+4: soc1/dcache/s1_valid_REG == soc2/dcache/s1_valid_REG;

end property;



property UPEC_dcache/s2_valid_REG_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s2_valid_REG == soc2/dcache/s2_valid_REG;

end property;



property UPEC_dcache/s5_req_data_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/dcache/s5_req_data == soc2/dcache/s5_req_data;

end property;



property UPEC_lsu/REG_2_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/REG_2 == soc2/lsu/REG_2;

end property;



property UPEC_lsu/dtlb/r_refill_tag_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/r_refill_tag == soc2/lsu/dtlb/r_refill_tag;

end property;



property UPEC_lsu/dtlb/r_sectored_hit_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/r_sectored_hit == soc2/lsu/dtlb/r_sectored_hit;

end property;



property UPEC_lsu/dtlb/r_sectored_hit_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/r_sectored_hit_addr == soc2/lsu/dtlb/r_sectored_hit_addr;

end property;



property UPEC_lsu/dtlb/r_sectored_repl_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/r_sectored_repl_addr == soc2/lsu/dtlb/r_sectored_repl_addr;

end property;



property UPEC_lsu/dtlb/r_superpage_repl_addr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/r_superpage_repl_addr == soc2/lsu/dtlb/r_superpage_repl_addr;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_data_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_0_data_0 == soc2/lsu/dtlb/sectored_entries_0_data_0;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_data_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_0_data_1 == soc2/lsu/dtlb/sectored_entries_0_data_1;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_data_2_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_0_data_2 == soc2/lsu/dtlb/sectored_entries_0_data_2;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_data_3_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_0_data_3 == soc2/lsu/dtlb/sectored_entries_0_data_3;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_valid_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_0_valid_0 == soc2/lsu/dtlb/sectored_entries_0_valid_0;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_valid_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_0_valid_1 == soc2/lsu/dtlb/sectored_entries_0_valid_1;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_valid_2_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_0_valid_2 == soc2/lsu/dtlb/sectored_entries_0_valid_2;

end property;



property UPEC_lsu/dtlb/sectored_entries_0_valid_3_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_0_valid_3 == soc2/lsu/dtlb/sectored_entries_0_valid_3;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_data_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_1_data_0 == soc2/lsu/dtlb/sectored_entries_1_data_0;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_data_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_1_data_1 == soc2/lsu/dtlb/sectored_entries_1_data_1;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_data_2_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_1_data_2 == soc2/lsu/dtlb/sectored_entries_1_data_2;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_data_3_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_1_data_3 == soc2/lsu/dtlb/sectored_entries_1_data_3;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_valid_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_1_valid_0 == soc2/lsu/dtlb/sectored_entries_1_valid_0;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_valid_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_1_valid_1 == soc2/lsu/dtlb/sectored_entries_1_valid_1;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_valid_2_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_1_valid_2 == soc2/lsu/dtlb/sectored_entries_1_valid_2;

end property;



property UPEC_lsu/dtlb/sectored_entries_1_valid_3_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/sectored_entries_1_valid_3 == soc2/lsu/dtlb/sectored_entries_1_valid_3;

end property;



property UPEC_lsu/dtlb/special_entry_data_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/special_entry_data_0 == soc2/lsu/dtlb/special_entry_data_0;

end property;



property UPEC_lsu/dtlb/special_entry_valid_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/special_entry_valid_0 == soc2/lsu/dtlb/special_entry_valid_0;

end property;



property UPEC_lsu/dtlb/state_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/state == soc2/lsu/dtlb/state;

end property;



property UPEC_lsu/dtlb/state_reg_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/state_reg == soc2/lsu/dtlb/state_reg;

end property;



property UPEC_lsu/dtlb/state_reg_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/state_reg_1 == soc2/lsu/dtlb/state_reg_1;

end property;



property UPEC_lsu/dtlb/superpage_entries_0_data_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/superpage_entries_0_data_0 == soc2/lsu/dtlb/superpage_entries_0_data_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_0_valid_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/superpage_entries_0_valid_0 == soc2/lsu/dtlb/superpage_entries_0_valid_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_1_data_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/superpage_entries_1_data_0 == soc2/lsu/dtlb/superpage_entries_1_data_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_1_valid_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/superpage_entries_1_valid_0 == soc2/lsu/dtlb/superpage_entries_1_valid_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_2_data_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/superpage_entries_2_data_0 == soc2/lsu/dtlb/superpage_entries_2_data_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_2_valid_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/superpage_entries_2_valid_0 == soc2/lsu/dtlb/superpage_entries_2_valid_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_3_data_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/superpage_entries_3_data_0 == soc2/lsu/dtlb/superpage_entries_3_data_0;

end property;



property UPEC_lsu/dtlb/superpage_entries_3_valid_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/dtlb/superpage_entries_3_valid_0 == soc2/lsu/dtlb/superpage_entries_3_valid_0;

end property;



property UPEC_lsu/hella_paddr_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/hella_paddr == soc2/lsu/hella_paddr;

end property;



property UPEC_lsu/hella_state_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/hella_state == soc2/lsu/hella_state;

end property;



property UPEC_lsu/hella_xcpt_ae_ld_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/hella_xcpt_ae_ld == soc2/lsu/hella_xcpt_ae_ld;

end property;



property UPEC_lsu/hella_xcpt_ae_st_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/hella_xcpt_ae_st == soc2/lsu/hella_xcpt_ae_st;

end property;



property UPEC_lsu/hella_xcpt_ma_ld_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/hella_xcpt_ma_ld == soc2/lsu/hella_xcpt_ma_ld;

end property;



property UPEC_lsu/hella_xcpt_ma_st_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/hella_xcpt_ma_st == soc2/lsu/hella_xcpt_ma_st;

end property;



property UPEC_lsu/hella_xcpt_pf_ld_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/hella_xcpt_pf_ld == soc2/lsu/hella_xcpt_pf_ld;

end property;



property UPEC_lsu/hella_xcpt_pf_st_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/hella_xcpt_pf_st == soc2/lsu/hella_xcpt_pf_st;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG == soc2/lsu/io_dmem_s1_kill_0_REG;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_1 == soc2/lsu/io_dmem_s1_kill_0_REG_1;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_10_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_10 == soc2/lsu/io_dmem_s1_kill_0_REG_10;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_11_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_11 == soc2/lsu/io_dmem_s1_kill_0_REG_11;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_12_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_12 == soc2/lsu/io_dmem_s1_kill_0_REG_12;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_13_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_13 == soc2/lsu/io_dmem_s1_kill_0_REG_13;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_14_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_14 == soc2/lsu/io_dmem_s1_kill_0_REG_14;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_15_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_15 == soc2/lsu/io_dmem_s1_kill_0_REG_15;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_16_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_16 == soc2/lsu/io_dmem_s1_kill_0_REG_16;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_17_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_17 == soc2/lsu/io_dmem_s1_kill_0_REG_17;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_18_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_18 == soc2/lsu/io_dmem_s1_kill_0_REG_18;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_19_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_19 == soc2/lsu/io_dmem_s1_kill_0_REG_19;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_2_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_2 == soc2/lsu/io_dmem_s1_kill_0_REG_2;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_20_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_20 == soc2/lsu/io_dmem_s1_kill_0_REG_20;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_21_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_21 == soc2/lsu/io_dmem_s1_kill_0_REG_21;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_22_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_22 == soc2/lsu/io_dmem_s1_kill_0_REG_22;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_23_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_23 == soc2/lsu/io_dmem_s1_kill_0_REG_23;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_24_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_24 == soc2/lsu/io_dmem_s1_kill_0_REG_24;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_25_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_25 == soc2/lsu/io_dmem_s1_kill_0_REG_25;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_26_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_26 == soc2/lsu/io_dmem_s1_kill_0_REG_26;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_27_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_27 == soc2/lsu/io_dmem_s1_kill_0_REG_27;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_28_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_28 == soc2/lsu/io_dmem_s1_kill_0_REG_28;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_29_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_29 == soc2/lsu/io_dmem_s1_kill_0_REG_29;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_3_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_3 == soc2/lsu/io_dmem_s1_kill_0_REG_3;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_30_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_30 == soc2/lsu/io_dmem_s1_kill_0_REG_30;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_31_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_31 == soc2/lsu/io_dmem_s1_kill_0_REG_31;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_32_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_32 == soc2/lsu/io_dmem_s1_kill_0_REG_32;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_33_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_33 == soc2/lsu/io_dmem_s1_kill_0_REG_33;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_34_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_34 == soc2/lsu/io_dmem_s1_kill_0_REG_34;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_35_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_35 == soc2/lsu/io_dmem_s1_kill_0_REG_35;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_36_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_36 == soc2/lsu/io_dmem_s1_kill_0_REG_36;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_37_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_37 == soc2/lsu/io_dmem_s1_kill_0_REG_37;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_38_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_38 == soc2/lsu/io_dmem_s1_kill_0_REG_38;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_39_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_39 == soc2/lsu/io_dmem_s1_kill_0_REG_39;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_4 == soc2/lsu/io_dmem_s1_kill_0_REG_4;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_40_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_40 == soc2/lsu/io_dmem_s1_kill_0_REG_40;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_41_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_41 == soc2/lsu/io_dmem_s1_kill_0_REG_41;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_42_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_42 == soc2/lsu/io_dmem_s1_kill_0_REG_42;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_43_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_43 == soc2/lsu/io_dmem_s1_kill_0_REG_43;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_44_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_44 == soc2/lsu/io_dmem_s1_kill_0_REG_44;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_45_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_45 == soc2/lsu/io_dmem_s1_kill_0_REG_45;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_46_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_46 == soc2/lsu/io_dmem_s1_kill_0_REG_46;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_47_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_47 == soc2/lsu/io_dmem_s1_kill_0_REG_47;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_48_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_48 == soc2/lsu/io_dmem_s1_kill_0_REG_48;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_49_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_49 == soc2/lsu/io_dmem_s1_kill_0_REG_49;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_5_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_5 == soc2/lsu/io_dmem_s1_kill_0_REG_5;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_50_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_50 == soc2/lsu/io_dmem_s1_kill_0_REG_50;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_51_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_51 == soc2/lsu/io_dmem_s1_kill_0_REG_51;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_52_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_52 == soc2/lsu/io_dmem_s1_kill_0_REG_52;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_53_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_53 == soc2/lsu/io_dmem_s1_kill_0_REG_53;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_54_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_54 == soc2/lsu/io_dmem_s1_kill_0_REG_54;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_55_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_55 == soc2/lsu/io_dmem_s1_kill_0_REG_55;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_56_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_56 == soc2/lsu/io_dmem_s1_kill_0_REG_56;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_57_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_57 == soc2/lsu/io_dmem_s1_kill_0_REG_57;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_58_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_58 == soc2/lsu/io_dmem_s1_kill_0_REG_58;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_59_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_59 == soc2/lsu/io_dmem_s1_kill_0_REG_59;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_6_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_6 == soc2/lsu/io_dmem_s1_kill_0_REG_6;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_60_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_60 == soc2/lsu/io_dmem_s1_kill_0_REG_60;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_61_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_61 == soc2/lsu/io_dmem_s1_kill_0_REG_61;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_62_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_62 == soc2/lsu/io_dmem_s1_kill_0_REG_62;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_63_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_63 == soc2/lsu/io_dmem_s1_kill_0_REG_63;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_64_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_64 == soc2/lsu/io_dmem_s1_kill_0_REG_64;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_7_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_7 == soc2/lsu/io_dmem_s1_kill_0_REG_7;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_8_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_8 == soc2/lsu/io_dmem_s1_kill_0_REG_8;

end property;



property UPEC_lsu/io_dmem_s1_kill_0_REG_9_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/io_dmem_s1_kill_0_REG_9 == soc2/lsu/io_dmem_s1_kill_0_REG_9;

end property;



property UPEC_lsu/lcam_addr_REG_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/lcam_addr_REG == soc2/lsu/lcam_addr_REG;

end property;



property UPEC_lsu/ldq_0_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_0_bits_addr_is_uncacheable == soc2/lsu/ldq_0_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_0_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_0_bits_addr_is_virtual == soc2/lsu/ldq_0_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_0_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_0_bits_executed == soc2/lsu/ldq_0_bits_executed;

end property;



property UPEC_lsu/ldq_0_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_0_bits_failure == soc2/lsu/ldq_0_bits_failure;

end property;



property UPEC_lsu/ldq_0_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_0_bits_observed == soc2/lsu/ldq_0_bits_observed;

end property;



property UPEC_lsu/ldq_0_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_0_bits_order_fail == soc2/lsu/ldq_0_bits_order_fail;

end property;



property UPEC_lsu/ldq_10_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_10_bits_addr_is_uncacheable == soc2/lsu/ldq_10_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_10_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_10_bits_addr_is_virtual == soc2/lsu/ldq_10_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_10_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_10_bits_executed == soc2/lsu/ldq_10_bits_executed;

end property;



property UPEC_lsu/ldq_10_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_10_bits_failure == soc2/lsu/ldq_10_bits_failure;

end property;



property UPEC_lsu/ldq_10_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_10_bits_observed == soc2/lsu/ldq_10_bits_observed;

end property;



property UPEC_lsu/ldq_10_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_10_bits_order_fail == soc2/lsu/ldq_10_bits_order_fail;

end property;



property UPEC_lsu/ldq_11_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_11_bits_addr_is_uncacheable == soc2/lsu/ldq_11_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_11_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_11_bits_addr_is_virtual == soc2/lsu/ldq_11_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_11_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_11_bits_executed == soc2/lsu/ldq_11_bits_executed;

end property;



property UPEC_lsu/ldq_11_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_11_bits_failure == soc2/lsu/ldq_11_bits_failure;

end property;



property UPEC_lsu/ldq_11_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_11_bits_observed == soc2/lsu/ldq_11_bits_observed;

end property;



property UPEC_lsu/ldq_11_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_11_bits_order_fail == soc2/lsu/ldq_11_bits_order_fail;

end property;



property UPEC_lsu/ldq_12_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_12_bits_addr_is_uncacheable == soc2/lsu/ldq_12_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_12_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_12_bits_addr_is_virtual == soc2/lsu/ldq_12_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_12_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_12_bits_executed == soc2/lsu/ldq_12_bits_executed;

end property;



property UPEC_lsu/ldq_12_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_12_bits_failure == soc2/lsu/ldq_12_bits_failure;

end property;



property UPEC_lsu/ldq_12_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_12_bits_observed == soc2/lsu/ldq_12_bits_observed;

end property;



property UPEC_lsu/ldq_12_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_12_bits_order_fail == soc2/lsu/ldq_12_bits_order_fail;

end property;



property UPEC_lsu/ldq_13_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_13_bits_addr_is_uncacheable == soc2/lsu/ldq_13_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_13_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_13_bits_addr_is_virtual == soc2/lsu/ldq_13_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_13_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_13_bits_executed == soc2/lsu/ldq_13_bits_executed;

end property;



property UPEC_lsu/ldq_13_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_13_bits_failure == soc2/lsu/ldq_13_bits_failure;

end property;



property UPEC_lsu/ldq_13_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_13_bits_observed == soc2/lsu/ldq_13_bits_observed;

end property;



property UPEC_lsu/ldq_13_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_13_bits_order_fail == soc2/lsu/ldq_13_bits_order_fail;

end property;



property UPEC_lsu/ldq_14_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_14_bits_addr_is_uncacheable == soc2/lsu/ldq_14_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_14_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_14_bits_addr_is_virtual == soc2/lsu/ldq_14_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_14_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_14_bits_executed == soc2/lsu/ldq_14_bits_executed;

end property;



property UPEC_lsu/ldq_14_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_14_bits_failure == soc2/lsu/ldq_14_bits_failure;

end property;



property UPEC_lsu/ldq_14_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_14_bits_observed == soc2/lsu/ldq_14_bits_observed;

end property;



property UPEC_lsu/ldq_14_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_14_bits_order_fail == soc2/lsu/ldq_14_bits_order_fail;

end property;



property UPEC_lsu/ldq_15_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_15_bits_addr_is_uncacheable == soc2/lsu/ldq_15_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_15_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_15_bits_addr_is_virtual == soc2/lsu/ldq_15_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_15_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_15_bits_executed == soc2/lsu/ldq_15_bits_executed;

end property;



property UPEC_lsu/ldq_15_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_15_bits_failure == soc2/lsu/ldq_15_bits_failure;

end property;



property UPEC_lsu/ldq_15_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_15_bits_observed == soc2/lsu/ldq_15_bits_observed;

end property;



property UPEC_lsu/ldq_15_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_15_bits_order_fail == soc2/lsu/ldq_15_bits_order_fail;

end property;



property UPEC_lsu/ldq_1_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_1_bits_addr_is_uncacheable == soc2/lsu/ldq_1_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_1_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_1_bits_addr_is_virtual == soc2/lsu/ldq_1_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_1_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_1_bits_executed == soc2/lsu/ldq_1_bits_executed;

end property;



property UPEC_lsu/ldq_1_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_1_bits_failure == soc2/lsu/ldq_1_bits_failure;

end property;



property UPEC_lsu/ldq_1_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_1_bits_observed == soc2/lsu/ldq_1_bits_observed;

end property;



property UPEC_lsu/ldq_1_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_1_bits_order_fail == soc2/lsu/ldq_1_bits_order_fail;

end property;



property UPEC_lsu/ldq_2_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_2_bits_addr_is_uncacheable == soc2/lsu/ldq_2_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_2_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_2_bits_addr_is_virtual == soc2/lsu/ldq_2_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_2_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_2_bits_executed == soc2/lsu/ldq_2_bits_executed;

end property;



property UPEC_lsu/ldq_2_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_2_bits_failure == soc2/lsu/ldq_2_bits_failure;

end property;



property UPEC_lsu/ldq_2_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_2_bits_observed == soc2/lsu/ldq_2_bits_observed;

end property;



property UPEC_lsu/ldq_2_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_2_bits_order_fail == soc2/lsu/ldq_2_bits_order_fail;

end property;



property UPEC_lsu/ldq_3_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_3_bits_addr_is_uncacheable == soc2/lsu/ldq_3_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_3_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_3_bits_addr_is_virtual == soc2/lsu/ldq_3_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_3_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_3_bits_executed == soc2/lsu/ldq_3_bits_executed;

end property;



property UPEC_lsu/ldq_3_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_3_bits_failure == soc2/lsu/ldq_3_bits_failure;

end property;



property UPEC_lsu/ldq_3_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_3_bits_observed == soc2/lsu/ldq_3_bits_observed;

end property;



property UPEC_lsu/ldq_3_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_3_bits_order_fail == soc2/lsu/ldq_3_bits_order_fail;

end property;



property UPEC_lsu/ldq_4_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_4_bits_addr_is_uncacheable == soc2/lsu/ldq_4_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_4_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_4_bits_addr_is_virtual == soc2/lsu/ldq_4_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_4_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_4_bits_executed == soc2/lsu/ldq_4_bits_executed;

end property;



property UPEC_lsu/ldq_4_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_4_bits_failure == soc2/lsu/ldq_4_bits_failure;

end property;



property UPEC_lsu/ldq_4_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_4_bits_observed == soc2/lsu/ldq_4_bits_observed;

end property;



property UPEC_lsu/ldq_4_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_4_bits_order_fail == soc2/lsu/ldq_4_bits_order_fail;

end property;



property UPEC_lsu/ldq_5_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_5_bits_addr_is_uncacheable == soc2/lsu/ldq_5_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_5_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_5_bits_addr_is_virtual == soc2/lsu/ldq_5_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_5_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_5_bits_executed == soc2/lsu/ldq_5_bits_executed;

end property;



property UPEC_lsu/ldq_5_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_5_bits_failure == soc2/lsu/ldq_5_bits_failure;

end property;



property UPEC_lsu/ldq_5_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_5_bits_observed == soc2/lsu/ldq_5_bits_observed;

end property;



property UPEC_lsu/ldq_5_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_5_bits_order_fail == soc2/lsu/ldq_5_bits_order_fail;

end property;



property UPEC_lsu/ldq_6_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_6_bits_addr_is_uncacheable == soc2/lsu/ldq_6_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_6_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_6_bits_addr_is_virtual == soc2/lsu/ldq_6_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_6_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_6_bits_executed == soc2/lsu/ldq_6_bits_executed;

end property;



property UPEC_lsu/ldq_6_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_6_bits_failure == soc2/lsu/ldq_6_bits_failure;

end property;



property UPEC_lsu/ldq_6_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_6_bits_observed == soc2/lsu/ldq_6_bits_observed;

end property;



property UPEC_lsu/ldq_6_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_6_bits_order_fail == soc2/lsu/ldq_6_bits_order_fail;

end property;



property UPEC_lsu/ldq_7_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_7_bits_addr_is_uncacheable == soc2/lsu/ldq_7_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_7_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_7_bits_addr_is_virtual == soc2/lsu/ldq_7_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_7_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_7_bits_executed == soc2/lsu/ldq_7_bits_executed;

end property;



property UPEC_lsu/ldq_7_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_7_bits_failure == soc2/lsu/ldq_7_bits_failure;

end property;



property UPEC_lsu/ldq_7_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_7_bits_observed == soc2/lsu/ldq_7_bits_observed;

end property;



property UPEC_lsu/ldq_7_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_7_bits_order_fail == soc2/lsu/ldq_7_bits_order_fail;

end property;



property UPEC_lsu/ldq_8_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_8_bits_addr_is_uncacheable == soc2/lsu/ldq_8_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_8_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_8_bits_addr_is_virtual == soc2/lsu/ldq_8_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_8_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_8_bits_executed == soc2/lsu/ldq_8_bits_executed;

end property;



property UPEC_lsu/ldq_8_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_8_bits_failure == soc2/lsu/ldq_8_bits_failure;

end property;



property UPEC_lsu/ldq_8_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_8_bits_observed == soc2/lsu/ldq_8_bits_observed;

end property;



property UPEC_lsu/ldq_8_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_8_bits_order_fail == soc2/lsu/ldq_8_bits_order_fail;

end property;



property UPEC_lsu/ldq_9_bits_addr_is_uncacheable_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_9_bits_addr_is_uncacheable == soc2/lsu/ldq_9_bits_addr_is_uncacheable;

end property;



property UPEC_lsu/ldq_9_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_9_bits_addr_is_virtual == soc2/lsu/ldq_9_bits_addr_is_virtual;

end property;



property UPEC_lsu/ldq_9_bits_executed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_9_bits_executed == soc2/lsu/ldq_9_bits_executed;

end property;



property UPEC_lsu/ldq_9_bits_failure_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_9_bits_failure == soc2/lsu/ldq_9_bits_failure;

end property;



property UPEC_lsu/ldq_9_bits_observed_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_9_bits_observed == soc2/lsu/ldq_9_bits_observed;

end property;



property UPEC_lsu/ldq_9_bits_order_fail_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/ldq_9_bits_order_fail == soc2/lsu/ldq_9_bits_order_fail;

end property;



property UPEC_lsu/mem_paddr_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/mem_paddr_0 == soc2/lsu/mem_paddr_0;

end property;



property UPEC_lsu/mem_tlb_miss_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/mem_tlb_miss_0 == soc2/lsu/mem_tlb_miss_0;

end property;



property UPEC_lsu/mem_tlb_uncacheable_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/mem_tlb_uncacheable_0 == soc2/lsu/mem_tlb_uncacheable_0;

end property;



property UPEC_lsu/mem_xcpt_causes_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/mem_xcpt_causes_0 == soc2/lsu/mem_xcpt_causes_0;

end property;



property UPEC_lsu/mem_xcpt_vaddrs_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/mem_xcpt_vaddrs_0 == soc2/lsu/mem_xcpt_vaddrs_0;

end property;



property UPEC_lsu/mem_xcpt_valids_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/mem_xcpt_valids_0 == soc2/lsu/mem_xcpt_valids_0;

end property;



property UPEC_lsu/r_xcpt_cause_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/r_xcpt_cause == soc2/lsu/r_xcpt_cause;

end property;



property UPEC_lsu/r_xcpt_uop_br_mask_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/r_xcpt_uop_br_mask == soc2/lsu/r_xcpt_uop_br_mask;

end property;



property UPEC_lsu/r_xcpt_uop_rob_idx_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/r_xcpt_uop_rob_idx == soc2/lsu/r_xcpt_uop_rob_idx;

end property;



property UPEC_lsu/r_xcpt_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/r_xcpt_valid == soc2/lsu/r_xcpt_valid;

end property;



property UPEC_lsu/s1_executing_loads_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_0 == soc2/lsu/s1_executing_loads_0;

end property;



property UPEC_lsu/s1_executing_loads_1_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_1 == soc2/lsu/s1_executing_loads_1;

end property;



property UPEC_lsu/s1_executing_loads_10_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_10 == soc2/lsu/s1_executing_loads_10;

end property;



property UPEC_lsu/s1_executing_loads_11_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_11 == soc2/lsu/s1_executing_loads_11;

end property;



property UPEC_lsu/s1_executing_loads_12_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_12 == soc2/lsu/s1_executing_loads_12;

end property;



property UPEC_lsu/s1_executing_loads_13_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_13 == soc2/lsu/s1_executing_loads_13;

end property;



property UPEC_lsu/s1_executing_loads_14_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_14 == soc2/lsu/s1_executing_loads_14;

end property;



property UPEC_lsu/s1_executing_loads_15_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_15 == soc2/lsu/s1_executing_loads_15;

end property;



property UPEC_lsu/s1_executing_loads_2_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_2 == soc2/lsu/s1_executing_loads_2;

end property;



property UPEC_lsu/s1_executing_loads_3_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_3 == soc2/lsu/s1_executing_loads_3;

end property;



property UPEC_lsu/s1_executing_loads_4_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_4 == soc2/lsu/s1_executing_loads_4;

end property;



property UPEC_lsu/s1_executing_loads_5_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_5 == soc2/lsu/s1_executing_loads_5;

end property;



property UPEC_lsu/s1_executing_loads_6_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_6 == soc2/lsu/s1_executing_loads_6;

end property;



property UPEC_lsu/s1_executing_loads_7_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_7 == soc2/lsu/s1_executing_loads_7;

end property;



property UPEC_lsu/s1_executing_loads_8_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_8 == soc2/lsu/s1_executing_loads_8;

end property;



property UPEC_lsu/s1_executing_loads_9_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/s1_executing_loads_9 == soc2/lsu/s1_executing_loads_9;

end property;



property UPEC_lsu/stq_0_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_0_bits_addr_is_virtual == soc2/lsu/stq_0_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_0_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_0_bits_addr_valid == soc2/lsu/stq_0_bits_addr_valid;

end property;



property UPEC_lsu/stq_10_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_10_bits_addr_is_virtual == soc2/lsu/stq_10_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_10_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_10_bits_addr_valid == soc2/lsu/stq_10_bits_addr_valid;

end property;



property UPEC_lsu/stq_11_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_11_bits_addr_is_virtual == soc2/lsu/stq_11_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_11_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_11_bits_addr_valid == soc2/lsu/stq_11_bits_addr_valid;

end property;



property UPEC_lsu/stq_12_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_12_bits_addr_is_virtual == soc2/lsu/stq_12_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_12_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_12_bits_addr_valid == soc2/lsu/stq_12_bits_addr_valid;

end property;



property UPEC_lsu/stq_13_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_13_bits_addr_is_virtual == soc2/lsu/stq_13_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_13_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_13_bits_addr_valid == soc2/lsu/stq_13_bits_addr_valid;

end property;



property UPEC_lsu/stq_14_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_14_bits_addr_is_virtual == soc2/lsu/stq_14_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_14_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_14_bits_addr_valid == soc2/lsu/stq_14_bits_addr_valid;

end property;



property UPEC_lsu/stq_15_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_15_bits_addr_is_virtual == soc2/lsu/stq_15_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_15_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_15_bits_addr_valid == soc2/lsu/stq_15_bits_addr_valid;

end property;



property UPEC_lsu/stq_1_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_1_bits_addr_is_virtual == soc2/lsu/stq_1_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_1_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_1_bits_addr_valid == soc2/lsu/stq_1_bits_addr_valid;

end property;



property UPEC_lsu/stq_2_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_2_bits_addr_is_virtual == soc2/lsu/stq_2_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_2_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_2_bits_addr_valid == soc2/lsu/stq_2_bits_addr_valid;

end property;



property UPEC_lsu/stq_3_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_3_bits_addr_is_virtual == soc2/lsu/stq_3_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_3_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_3_bits_addr_valid == soc2/lsu/stq_3_bits_addr_valid;

end property;



property UPEC_lsu/stq_4_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_4_bits_addr_is_virtual == soc2/lsu/stq_4_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_4_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_4_bits_addr_valid == soc2/lsu/stq_4_bits_addr_valid;

end property;



property UPEC_lsu/stq_5_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_5_bits_addr_is_virtual == soc2/lsu/stq_5_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_5_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_5_bits_addr_valid == soc2/lsu/stq_5_bits_addr_valid;

end property;



property UPEC_lsu/stq_6_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_6_bits_addr_is_virtual == soc2/lsu/stq_6_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_6_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_6_bits_addr_valid == soc2/lsu/stq_6_bits_addr_valid;

end property;



property UPEC_lsu/stq_7_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_7_bits_addr_is_virtual == soc2/lsu/stq_7_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_7_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_7_bits_addr_valid == soc2/lsu/stq_7_bits_addr_valid;

end property;



property UPEC_lsu/stq_8_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_8_bits_addr_is_virtual == soc2/lsu/stq_8_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_8_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_8_bits_addr_valid == soc2/lsu/stq_8_bits_addr_valid;

end property;



property UPEC_lsu/stq_9_bits_addr_is_virtual_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_9_bits_addr_is_virtual == soc2/lsu/stq_9_bits_addr_is_virtual;

end property;



property UPEC_lsu/stq_9_bits_addr_valid_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_9_bits_addr_valid == soc2/lsu/stq_9_bits_addr_valid;

end property;



property UPEC_lsu/stq_execute_head_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/stq_execute_head == soc2/lsu/stq_execute_head;

end property;



property UPEC_lsu/wb_forward_stq_idx_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/wb_forward_stq_idx_0 == soc2/lsu/wb_forward_stq_idx_0;

end property;



property UPEC_lsu/wb_forward_valid_0_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

prove:

    at t+4: soc1/lsu/wb_forward_valid_0 == soc2/lsu/wb_forward_valid_0;

end property;



property UPEC_ptw/mem_resp_data_cycle4;

  dependencies: no_reset, br_tag_in_bounds, functional_invariants, st_dep_masks, ptw_secret;

  assume:

    during[t, t+4]: blackboxing;
    during[t, t+4]: secret_data_protected;
    during[t, t+4]: microequivalence == 1'b1;
    during[t, t+4]: pnr_between_head_and_root_id == 1'b1;

    at t: state_equivalence;
    at t: init_mispred_signals;

    during[t, t+4]: soc1/dcache/s2_data_word_0 != soc2/dcache/s2_data_word_0 ? soc1/dcache/s2_req_0_addr != soc2/dcache/s2_req_0_addr || soc1/dcache/s2_req_0_addr[31:12] == 20'h8abcd || soc2/dcache/s2_req_0_addr[31:12] == 20'h8abcd : 1'b1;

    at t+4: soc1/ptw/mem_resp_valid && soc2/ptw/mem_resp_valid;

prove:

    at t+4: soc1/ptw/mem_resp_data == soc2/ptw/mem_resp_data;

end property;




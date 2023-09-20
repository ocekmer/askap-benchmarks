	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx90a"
	.protected	_Z23dFindPeak_Step2_SimplerPfPmS0_m ; -- Begin function _Z23dFindPeak_Step2_SimplerPfPmS0_m
	.globl	_Z23dFindPeak_Step2_SimplerPfPmS0_m
	.p2align	8
	.type	_Z23dFindPeak_Step2_SimplerPfPmS0_m,@function
_Z23dFindPeak_Step2_SimplerPfPmS0_m:    ; @_Z23dFindPeak_Step2_SimplerPfPmS0_m
; %bb.0:
	s_load_dword s0, s[4:5], 0x4
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	v_lshlrev_b32_e32 v2, 2, v0
	v_mov_b32_e32 v4, 0
	v_add_u32_e32 v1, 0x400, v2
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s0, 0xffff
	s_mul_i32 s0, s8, s9
	ds_write_b32 v2, v4 offset:1024
	v_add_u32_e32 v2, s0, v0
	v_mov_b32_e32 v3, v4
	s_mov_b32 s1, 0
	v_lshlrev_b32_e32 v8, 3, v0
	v_mov_b32_e32 v5, v4
	v_cmp_gt_u64_e32 vcc, s[18:19], v[2:3]
	ds_write_b64 v8, v[4:5]
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_5
; %bb.1:                                ; %.lr.ph.preheader
	s_load_dword s0, s[4:5], 0xc
	v_lshlrev_b64 v[4:5], 2, v[2:3]
	v_mov_b32_e32 v6, s13
	v_add_co_u32_e32 v4, vcc, s12, v4
	v_addc_co_u32_e32 v5, vcc, v6, v5, vcc
	v_lshlrev_b64 v[6:7], 3, v[2:3]
	v_mov_b32_e32 v9, s15
	v_add_co_u32_e32 v6, vcc, s14, v6
	s_waitcnt lgkmcnt(0)
	s_lshl_b64 s[4:5], s[0:1], 2
	v_addc_co_u32_e32 v7, vcc, v9, v7, vcc
	s_lshl_b64 s[6:7], s[0:1], 3
	s_mov_b64 s[10:11], 0
	v_mov_b32_e32 v9, 0
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[14:15]
	v_mov_b32_e32 v10, s1
	v_add_co_u32_e32 v2, vcc, s0, v2
	v_addc_co_u32_e32 v3, vcc, v3, v10, vcc
	v_mov_b32_e32 v10, s5
	v_add_co_u32_e32 v4, vcc, s4, v4
	v_addc_co_u32_e32 v5, vcc, v5, v10, vcc
	v_cmp_le_u64_e32 vcc, s[18:19], v[2:3]
	v_mov_b32_e32 v10, s7
	s_or_b64 s[10:11], vcc, s[10:11]
	v_add_co_u32_e32 v6, vcc, s6, v6
	v_addc_co_u32_e32 v7, vcc, v7, v10, vcc
	s_andn2_b64 exec, exec, s[10:11]
	s_cbranch_execz .LBB0_5
.LBB0_3:                                ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	global_load_dword v10, v[4:5], off
	s_waitcnt vmcnt(0)
	v_cmp_gt_f32_e64 s[20:21], |v10|, |v9|
	s_and_saveexec_b64 s[14:15], s[20:21]
	s_cbranch_execz .LBB0_2
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	global_load_dwordx2 v[12:13], v[6:7], off
	v_mov_b32_e32 v9, v10
	ds_write_b32 v1, v10
	s_waitcnt vmcnt(0)
	ds_write_b64 v8, v[12:13]
	s_branch .LBB0_2
.LBB0_5:                                ; %Flow69
	s_or_b64 exec, exec, s[2:3]
	s_cmp_lt_u32 s9, 2
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %._crit_edge
	s_mov_b32 s9, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_8
; %bb.7:
	s_lshl_b64 s[0:1], s[8:9], 2
	ds_read_b64 v[2:3], v8
	ds_read_b32 v1, v1
	s_add_u32 s0, s12, s0
	s_addc_u32 s1, s13, s1
	s_lshl_b64 s[2:3], s[8:9], 3
	s_add_u32 s2, s16, s2
	v_mov_b32_e32 v0, 0
	s_addc_u32 s3, s17, s3
	s_waitcnt lgkmcnt(1)
	global_store_dwordx2 v0, v[2:3], s[2:3]
	s_waitcnt lgkmcnt(0)
	global_store_dword v0, v1, s[0:1]
.LBB0_8:
	s_endpgm
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	s_or_b64 exec, exec, s[0:1]
	s_cmp_lt_u32 s2, 4
	s_cbranch_scc1 .LBB0_6
.LBB0_10:                               ; %.lr.ph48
                                        ; =>This Inner Loop Header: Depth=1
	s_mov_b32 s2, s9
	s_lshr_b32 s9, s9, 1
	v_cmp_gt_u32_e32 vcc, s9, v0
	s_waitcnt lgkmcnt(0)
	s_barrier 
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	v_lshl_add_u32 v2, s9, 2, v1
	ds_read_b32 v2, v2
	ds_read_b32 v3, v1
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_f32_e64 s[4:5], |v2|, |v3|
	s_and_b64 exec, exec, s[4:5]
	s_cbranch_execz .LBB0_9
; %bb.12:                               ;   in Loop: Header=BB0_10 Depth=1
	v_lshl_add_u32 v3, s9, 3, v8
	ds_read_b64 v[4:5], v3
	ds_write_b32 v1, v2
	s_waitcnt lgkmcnt(1)
	ds_write_b64 v8, v[4:5]
	s_branch .LBB0_9
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z23dFindPeak_Step2_SimplerPfPmS0_m
		.amdhsa_group_segment_fixed_size 1536
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 32
		.amdhsa_user_sgpr_count 8
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 14
		.amdhsa_next_free_sgpr 22
		.amdhsa_accum_offset 16
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	_Z23dFindPeak_Step2_SimplerPfPmS0_m, .Lfunc_end0-_Z23dFindPeak_Step2_SimplerPfPmS0_m
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 524
; NumSgprs: 24
; NumVgprs: 14
; NumAgprs: 0
; TotalNumVgprs: 14
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 1536 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 24
; NumVGPRsForWavesPerEU: 14
; AccumOffset: 16
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 3
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.protected	_Z23dFindPeak_Step1_SimplerPKfPfPmm ; -- Begin function _Z23dFindPeak_Step1_SimplerPKfPfPmm
	.globl	_Z23dFindPeak_Step1_SimplerPKfPfPmm
	.p2align	8
	.type	_Z23dFindPeak_Step1_SimplerPKfPfPmm,@function
_Z23dFindPeak_Step1_SimplerPKfPfPmm:    ; @_Z23dFindPeak_Step1_SimplerPKfPfPmm
; %bb.0:
	s_load_dword s0, s[4:5], 0x4
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	v_lshlrev_b32_e32 v2, 2, v0
	v_mov_b32_e32 v4, 0
	v_add_u32_e32 v1, 0x400, v2
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s0, 0xffff
	s_mul_i32 s0, s8, s9
	ds_write_b32 v2, v4 offset:1024
	v_add_u32_e32 v2, s0, v0
	v_mov_b32_e32 v3, v4
	s_mov_b32 s1, 0
	v_lshlrev_b32_e32 v6, 3, v0
	v_mov_b32_e32 v5, v4
	v_cmp_gt_u64_e32 vcc, s[18:19], v[2:3]
	ds_write_b64 v6, v[4:5]
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB1_5
; %bb.1:                                ; %.lr.ph.preheader
	s_load_dword s0, s[4:5], 0xc
	v_lshlrev_b64 v[4:5], 2, v[2:3]
	v_mov_b32_e32 v7, s13
	v_add_co_u32_e32 v4, vcc, s12, v4
	v_addc_co_u32_e32 v5, vcc, v7, v5, vcc
	s_waitcnt lgkmcnt(0)
	s_lshl_b64 s[4:5], s[0:1], 2
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v7, 0
	s_branch .LBB1_3
.LBB1_2:                                ;   in Loop: Header=BB1_3 Depth=1
	s_or_b64 exec, exec, s[10:11]
	v_mov_b32_e32 v8, s1
	v_add_co_u32_e32 v2, vcc, s0, v2
	v_addc_co_u32_e32 v3, vcc, v3, v8, vcc
	v_cmp_le_u64_e32 vcc, s[18:19], v[2:3]
	v_mov_b32_e32 v8, s5
	s_or_b64 s[6:7], vcc, s[6:7]
	v_add_co_u32_e32 v4, vcc, s4, v4
	v_addc_co_u32_e32 v5, vcc, v5, v8, vcc
	s_andn2_b64 exec, exec, s[6:7]
	s_cbranch_execz .LBB1_5
.LBB1_3:                                ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	global_load_dword v8, v[4:5], off
	s_waitcnt vmcnt(0)
	v_cmp_gt_f32_e64 s[12:13], |v8|, |v7|
	s_and_saveexec_b64 s[10:11], s[12:13]
	s_cbranch_execz .LBB1_2
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	v_mov_b32_e32 v7, v8
	ds_write_b32 v1, v8
	ds_write_b64 v6, v[2:3]
	s_branch .LBB1_2
.LBB1_5:                                ; %Flow68
	s_or_b64 exec, exec, s[2:3]
	s_cmp_lt_u32 s9, 2
	s_waitcnt lgkmcnt(0)
	s_barrier 
	s_branch .LBB1_7
.LBB1_6:                                ;   in Loop: Header=BB1_7 Depth=1
	s_or_b64 exec, exec, s[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier 
	s_cmp_lt_u32 s2, 4
.LBB1_7:                                ; %Flow68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc1 .LBB1_11
; %bb.8:                                ; %.lr.ph50
                                        ;   in Loop: Header=BB1_7 Depth=1
	s_mov_b32 s2, s9
	s_lshr_b32 s9, s9, 1
	v_cmp_gt_u32_e32 vcc, s9, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB1_6
; %bb.9:                                ;   in Loop: Header=BB1_7 Depth=1
	v_lshl_add_u32 v2, s9, 2, v1
	ds_read_b32 v2, v2
	ds_read_b32 v3, v1
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_f32_e64 s[4:5], |v2|, |v3|
	s_and_b64 exec, exec, s[4:5]
	s_cbranch_execz .LBB1_6
; %bb.10:                               ;   in Loop: Header=BB1_7 Depth=1
	v_lshl_add_u32 v3, s9, 3, v6
	ds_read_b64 v[4:5], v3
	ds_write_b32 v1, v2
	s_waitcnt lgkmcnt(1)
	ds_write_b64 v6, v[4:5]
	s_branch .LBB1_6
.LBB1_11:                               ; %._crit_edge51
	s_mov_b32 s9, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB1_13
; %bb.12:
	s_lshl_b64 s[0:1], s[8:9], 3
	ds_read_b32 v3, v1
	ds_read_b64 v[0:1], v6
	s_add_u32 s0, s16, s0
	s_addc_u32 s1, s17, s1
	s_lshl_b64 s[2:3], s[8:9], 2
	s_add_u32 s2, s14, s2
	v_mov_b32_e32 v2, 0
	s_addc_u32 s3, s15, s3
	s_waitcnt lgkmcnt(1)
	global_store_dword v2, v3, s[2:3]
	s_waitcnt lgkmcnt(0)
	global_store_dwordx2 v2, v[0:1], s[0:1]
.LBB1_13:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z23dFindPeak_Step1_SimplerPKfPfPmm
		.amdhsa_group_segment_fixed_size 1536
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 32
		.amdhsa_user_sgpr_count 8
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 9
		.amdhsa_next_free_sgpr 20
		.amdhsa_accum_offset 12
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end1:
	.size	_Z23dFindPeak_Step1_SimplerPKfPfPmm, .Lfunc_end1-_Z23dFindPeak_Step1_SimplerPKfPfPmm
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 484
; NumSgprs: 22
; NumVgprs: 9
; NumAgprs: 0
; TotalNumVgprs: 9
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 1536 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 22
; NumVGPRsForWavesPerEU: 9
; AccumOffset: 12
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 2
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.protected	_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff ; -- Begin function _Z20dSubtractPSF_SimplerPKfPfiiiiiiiff
	.globl	_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff
	.p2align	8
	.type	_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff,@function
_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff: ; @_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff
; %bb.0:
	s_load_dword s0, s[4:5], 0x4
	s_load_dwordx8 s[12:19], s[6:7], 0x10
	v_and_b32_e32 v1, 0x3ff, v0
	v_bfe_u32 v0, v0, 10, 10
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s1, s0, 16
	s_and_b32 s0, s0, 0xffff
	s_mul_i32 s0, s8, s0
	s_add_i32 s0, s0, s13
	v_add_u32_e32 v1, s0, v1
	s_mul_i32 s0, s9, s1
	s_add_i32 s0, s0, s14
	v_add_u32_e32 v0, s0, v0
	v_cmp_ge_i32_e32 vcc, s15, v1
	v_cmp_ge_i32_e64 s[0:1], s16, v0
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB2_2
; %bb.1:
	s_load_dwordx4 s[0:3], s[6:7], 0x0
	v_subrev_u32_e32 v2, s18, v0
	v_mul_lo_u32 v2, v2, s12
	v_subrev_u32_e32 v3, s17, v1
	v_add_u32_e32 v2, v3, v2
	v_ashrrev_i32_e32 v3, 31, v2
	v_mul_lo_u32 v0, v0, s12
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_u32_e32 v0, v0, v1
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s1
	v_add_co_u32_e32 v2, vcc, s0, v2
	v_ashrrev_i32_e32 v1, 31, v0
	v_addc_co_u32_e32 v3, vcc, v4, v3, vcc
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	global_load_dword v2, v[2:3], off
	v_mov_b32_e32 v3, s3
	v_add_co_u32_e32 v0, vcc, s2, v0
	v_addc_co_u32_e32 v1, vcc, v3, v1, vcc
	global_load_dword v3, v[0:1], off
	s_load_dword s0, s[6:7], 0x30
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s0
	v_mul_f32_e32 v4, s19, v4
	s_waitcnt vmcnt(0)
	v_fma_f32 v2, -v4, v2, v3
	global_store_dword v[0:1], v2, off
.LBB2_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z20dSubtractPSF_SimplerPKfPfiiiiiiiff
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 52
		.amdhsa_user_sgpr_count 8
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 5
		.amdhsa_next_free_sgpr 20
		.amdhsa_accum_offset 8
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end2:
	.size	_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff, .Lfunc_end2-_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 252
; NumSgprs: 22
; NumVgprs: 5
; NumAgprs: 0
; TotalNumVgprs: 5
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 22
; NumVGPRsForWavesPerEU: 5
; AccumOffset: 8
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 1
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.p2alignl 6, 3212836864
	.fill 256, 4, 3212836864
	.protected	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE ; @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
	.type	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE
_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE ; @_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE
	.type	_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE,#alloc
	.weak	_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE
_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE ; @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE
	.type	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE,#alloc
	.weak	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE
_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE, 1

	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE
_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE, 1

	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE,#alloc
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE
_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE, 1

	.ident	"AMD clang version 14.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.2.3 22324 d6c88e5a78066d5d7a1e8db6c5e3e9884c6ad10e)"
	.section	".note.GNU-stack"
	.addrsig
	.addrsig_sym _ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
	.addrsig_sym _ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
	.addrsig_sym _ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE
	.addrsig_sym _ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE
	.addrsig_sym _ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE
	.addrsig_sym _ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE
	.addrsig_sym _ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           8
        .value_kind:     by_value
    .group_segment_fixed_size: 1536
    .kernarg_segment_align: 8
    .kernarg_segment_size: 32
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z23dFindPeak_Step2_SimplerPfPmS0_m
    .private_segment_fixed_size: 0
    .sgpr_count:     24
    .sgpr_spill_count: 0
    .symbol:         _Z23dFindPeak_Step2_SimplerPfPmS0_m.kd
    .vgpr_count:     14
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           8
        .value_kind:     by_value
    .group_segment_fixed_size: 1536
    .kernarg_segment_align: 8
    .kernarg_segment_size: 32
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z23dFindPeak_Step1_SimplerPKfPfPmm
    .private_segment_fixed_size: 0
    .sgpr_count:     22
    .sgpr_spill_count: 0
    .symbol:         _Z23dFindPeak_Step1_SimplerPKfPfPmm.kd
    .vgpr_count:     9
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           4
        .value_kind:     by_value
      - .offset:         20
        .size:           4
        .value_kind:     by_value
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         28
        .size:           4
        .value_kind:     by_value
      - .offset:         32
        .size:           4
        .value_kind:     by_value
      - .offset:         36
        .size:           4
        .value_kind:     by_value
      - .offset:         40
        .size:           4
        .value_kind:     by_value
      - .offset:         44
        .size:           4
        .value_kind:     by_value
      - .offset:         48
        .size:           4
        .value_kind:     by_value
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 52
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z20dSubtractPSF_SimplerPKfPfiiiiiiiff
    .private_segment_fixed_size: 0
    .sgpr_count:     22
    .sgpr_spill_count: 0
    .symbol:         _Z20dSubtractPSF_SimplerPKfPfiiiiiiiff.kd
    .vgpr_count:     5
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx90a
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata

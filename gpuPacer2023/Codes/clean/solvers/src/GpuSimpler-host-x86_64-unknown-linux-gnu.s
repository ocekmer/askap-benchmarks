	.text
	.file	"GpuSimpler.hip"
	.globl	_Z38__device_stub__dFindPeak_Step2_SimplerPfPmS0_m # -- Begin function _Z38__device_stub__dFindPeak_Step2_SimplerPfPmS0_m
	.p2align	4, 0x90
	.type	_Z38__device_stub__dFindPeak_Step2_SimplerPfPmS0_m,@function
_Z38__device_stub__dFindPeak_Step2_SimplerPfPmS0_m: # @_Z38__device_stub__dFindPeak_Step2_SimplerPfPmS0_m
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	32(%rsp), %rdi
	leaq	16(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%rsp, %rcx
	callq	__hipPopCallConfiguration
	movq	32(%rsp), %rsi
	movl	40(%rsp), %edx
	movq	16(%rsp), %rcx
	movl	24(%rsp), %r8d
	leaq	80(%rsp), %r9
	movl	$_Z23dFindPeak_Step2_SimplerPfPmS0_m, %edi
	pushq	(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$136, %rsp
	.cfi_adjust_cfa_offset -136
	retq
.Lfunc_end0:
	.size	_Z38__device_stub__dFindPeak_Step2_SimplerPfPmS0_m, .Lfunc_end0-_Z38__device_stub__dFindPeak_Step2_SimplerPfPmS0_m
	.cfi_endproc
                                        # -- End function
	.globl	_Z38__device_stub__dFindPeak_Step1_SimplerPKfPfPmm # -- Begin function _Z38__device_stub__dFindPeak_Step1_SimplerPKfPfPmm
	.p2align	4, 0x90
	.type	_Z38__device_stub__dFindPeak_Step1_SimplerPKfPfPmm,@function
_Z38__device_stub__dFindPeak_Step1_SimplerPKfPfPmm: # @_Z38__device_stub__dFindPeak_Step1_SimplerPKfPfPmm
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	32(%rsp), %rdi
	leaq	16(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%rsp, %rcx
	callq	__hipPopCallConfiguration
	movq	32(%rsp), %rsi
	movl	40(%rsp), %edx
	movq	16(%rsp), %rcx
	movl	24(%rsp), %r8d
	leaq	80(%rsp), %r9
	movl	$_Z23dFindPeak_Step1_SimplerPKfPfPmm, %edi
	pushq	(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$136, %rsp
	.cfi_adjust_cfa_offset -136
	retq
.Lfunc_end1:
	.size	_Z38__device_stub__dFindPeak_Step1_SimplerPKfPfPmm, .Lfunc_end1-_Z38__device_stub__dFindPeak_Step1_SimplerPKfPfPmm
	.cfi_endproc
                                        # -- End function
	.globl	_Z35__device_stub__dSubtractPSF_SimplerPKfPfiiiiiiiff # -- Begin function _Z35__device_stub__dSubtractPSF_SimplerPKfPfiiiiiiiff
	.p2align	4, 0x90
	.type	_Z35__device_stub__dSubtractPSF_SimplerPKfPfiiiiiiiff,@function
_Z35__device_stub__dSubtractPSF_SimplerPKfPfiiiiiiiff: # @_Z35__device_stub__dSubtractPSF_SimplerPKfPfiiiiiiiff
	.cfi_startproc
# %bb.0:
	subq	$184, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movl	%edx, 28(%rsp)
	movl	%ecx, 24(%rsp)
	movl	%r8d, 20(%rsp)
	movl	%r9d, 16(%rsp)
	movss	%xmm0, 12(%rsp)
	movss	%xmm1, 8(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	28(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	20(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	200(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	64(%rsp), %rdi
	leaq	48(%rsp), %rsi
	leaq	40(%rsp), %rdx
	leaq	32(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	64(%rsp), %rsi
	movl	72(%rsp), %edx
	movq	48(%rsp), %rcx
	movl	56(%rsp), %r8d
	leaq	96(%rsp), %r9
	movl	$_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff, %edi
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	48(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$200, %rsp
	.cfi_adjust_cfa_offset -200
	retq
.Lfunc_end2:
	.size	_Z35__device_stub__dSubtractPSF_SimplerPKfPfiiiiiiiff, .Lfunc_end2-_Z35__device_stub__dSubtractPSF_SimplerPKfPfiiiiiiiff
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _ZN10GpuSimpler11subtractPSFEmmf
.LCPI3_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI3_1:
	.quad	0x3fb0000000000000              # double 0.0625
	.text
	.globl	_ZN10GpuSimpler11subtractPSFEmmf
	.p2align	4, 0x90
	.type	_ZN10GpuSimpler11subtractPSFEmmf,@function
_ZN10GpuSimpler11subtractPSFEmmf:       # @_ZN10GpuSimpler11subtractPSFEmmf
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movss	%xmm0, 8(%rsp)                  # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %rax
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	24(%rdi), %rdi
	movq	%rsi, %rcx
	orq	%rdi, %rcx
	shrq	$32, %rcx
	je	.LBB3_1
# %bb.2:
	xorl	%edx, %edx
	divq	%rdi
	movq	%rdx, %rsi
	movq	%rax, %r8
	movq	%rbx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	je	.LBB3_4
.LBB3_5:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rdi
	jmp	.LBB3_6
.LBB3_1:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %esi
	movl	%eax, %r8d
	movq	%rbx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	jne	.LBB3_5
.LBB3_4:
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
.LBB3_6:
	movl	%esi, %r15d
	subl	%edx, %r15d
	movl	%r8d, %ebp
	subl	%edx, %ebp
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	movl	$0, %ecx
	cmovnsl	%r15d, %ecx
	testl	%ebp, %ebp
	cmovnsl	%ebp, %r13d
	leaq	-1(%rdi), %rbx
	movslq	%esi, %r14
	movslq	%edx, %rdx
	notq	%rdx
	addq	%rdi, %r14
	addq	%rdx, %r14
	cmpq	%r14, %rbx
	cmovbl	%ebx, %r14d
	movslq	%r8d, %r12
	cltq
	notq	%rax
	addq	%rdi, %r12
	addq	%rax, %r12
	cmpq	%r12, %rbx
	cmovbl	%ebx, %r12d
	movl	%r14d, %eax
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	subl	%ecx, %eax
	cvtsi2sd	%eax, %xmm0
	addsd	.LCPI3_0(%rip), %xmm0
	mulsd	.LCPI3_1(%rip), %xmm0
	callq	ceil@PLT
	cvttsd2si	%xmm0, %ebx
	movl	%r12d, %eax
	movq	%r13, 48(%rsp)                  # 8-byte Spill
	subl	%r13d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	addsd	.LCPI3_0(%rip), %xmm0
	mulsd	.LCPI3_1(%rip), %xmm0
	callq	ceil@PLT
	cvttsd2si	%xmm0, %eax
	shlq	$32, %rax
	orq	%rax, %rbx
	movabsq	$68719476752, %rdx              # imm = 0x1000000010
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB3_8
# %bb.7:
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rdx), %rax
	movq	64(%rdx), %rcx
	movl	24(%rdx), %edx
	movq	%rax, 120(%rsp)
	movq	%rcx, 112(%rsp)
	movl	%edx, 44(%rsp)
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	%eax, 40(%rsp)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 36(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%r12d, 28(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%ebp, 20(%rsp)
	movss	8(%rsp), %xmm0                  # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 16(%rsp)
	movl	$1036831949, 12(%rsp)           # imm = 0x3DCCCCCD
	leaq	120(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	44(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	36(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	28(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 184(%rsp)
	leaq	20(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 200(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	96(%rsp), %rdi
	leaq	80(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	64(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movq	80(%rsp), %rcx
	movl	88(%rsp), %r8d
	leaq	128(%rsp), %r9
	movl	$_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff, %edi
	pushq	64(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB3_8:
	callq	hipGetLastError
	testl	%eax, %eax
	jne	.LBB3_10
# %bb.9:
	addq	$216, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB3_10:
	.cfi_def_cfa_offset 272
	movl	%eax, %ebx
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.11, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.12, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r14
	movl	%ebx, %edi
	callq	hipGetErrorString
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.13, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.15, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$155, %esi
	callq	_ZNSolsEi
	movl	$.L.str.16, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.17, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$1, %edi
	callq	exit
.Lfunc_end3:
	.size	_ZN10GpuSimpler11subtractPSFEmmf, .Lfunc_end3-_ZN10GpuSimpler11subtractPSFEmmf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _ZN10GpuSimpler12subtractPSF2ERKiS1_RKmRKf
.LCPI4_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI4_1:
	.quad	0x3fa0000000000000              # double 0.03125
	.text
	.globl	_ZN10GpuSimpler12subtractPSF2ERKiS1_RKmRKf
	.p2align	4, 0x90
	.type	_ZN10GpuSimpler12subtractPSF2ERKiS1_RKmRKf,@function
_ZN10GpuSimpler12subtractPSF2ERKiS1_RKmRKf: # @_ZN10GpuSimpler12subtractPSF2ERKiS1_RKmRKf
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	%rdx, %r8
	movq	(%rcx), %rax
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	movq	24(%rdi), %rcx
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB4_1
# %bb.2:
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r12
	jmp	.LBB4_3
.LBB4_1:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %r12d
                                        # kill: def $eax killed $eax def $rax
.LBB4_3:
	movslq	(%rsi), %rdx
	movslq	%r12d, %rbp
	subl	%edx, %r12d
	movl	%eax, %r13d
	subl	%edx, %r13d
	xorl	%r15d, %r15d
	testl	%r12d, %r12d
	movl	$0, %edi
	cmovnsl	%r12d, %edi
	testl	%r13d, %r13d
	cmovnsl	%r13d, %r15d
	leaq	-1(%rcx), %rsi
	notq	%rdx
	addq	%rcx, %rbp
	addq	%rdx, %rbp
	cmpq	%rbp, %rsi
	cmovbl	%esi, %ebp
	movslq	%eax, %r14
	movslq	(%r8), %rax
	notq	%rax
	addq	%rcx, %r14
	addq	%rax, %r14
	cmpq	%r14, %rsi
	cmovbl	%esi, %r14d
	movl	%ebp, %eax
	movl	%edi, (%rsp)                    # 4-byte Spill
	subl	%edi, %eax
	cvtsi2sd	%eax, %xmm0
	addsd	.LCPI4_0(%rip), %xmm0
	mulsd	.LCPI4_1(%rip), %xmm0
	callq	ceil@PLT
	cvttsd2si	%xmm0, %ebx
	movl	%r14d, %eax
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	subl	%r15d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	addsd	.LCPI4_0(%rip), %xmm0
	mulsd	.LCPI4_1(%rip), %xmm0
	callq	ceil@PLT
	cvttsd2si	%xmm0, %eax
	shlq	$32, %rax
	orq	%rax, %rbx
	movabsq	$137438953504, %rdx             # imm = 0x2000000020
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB4_5
# %bb.4:
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rdx), %rax
	movq	64(%rdx), %rcx
	movl	24(%rdx), %edx
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movss	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movq	%rax, 120(%rsp)
	movq	%rcx, 112(%rsp)
	movl	%edx, 36(%rsp)
	movl	(%rsp), %eax                    # 4-byte Reload
	movl	%eax, 32(%rsp)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 28(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%r14d, 20(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r13d, 12(%rsp)
	movss	%xmm0, 8(%rsp)
	movl	$1036831949, 4(%rsp)            # imm = 0x3DCCCCCD
	leaq	120(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	36(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	28(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	20(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 184(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 200(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	96(%rsp), %rdi
	leaq	80(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	64(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movq	80(%rsp), %rcx
	movl	88(%rsp), %r8d
	leaq	128(%rsp), %r9
	movl	$_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff, %edi
	pushq	64(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB4_5:
	callq	hipGetLastError
	testl	%eax, %eax
	jne	.LBB4_7
# %bb.6:
	addq	$216, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_7:
	.cfi_def_cfa_offset 272
	movl	%eax, %ebx
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.11, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.12, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r14
	movl	%ebx, %edi
	callq	hipGetErrorString
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.13, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.15, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$192, %esi
	callq	_ZNSolsEi
	movl	$.L.str.16, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.17, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$1, %edi
	callq	exit
.Lfunc_end4:
	.size	_ZN10GpuSimpler12subtractPSF2ERKiS1_RKmRKf, .Lfunc_end4-_ZN10GpuSimpler12subtractPSF2ERKiS1_RKmRKf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function _ZN10GpuSimpler10deconvolveEv
.LCPI5_0:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI5_1:
	.long	0x3727c5ac                      # float 9.99999974E-6
.LCPI5_2:
	.long	0x3dcccccd                      # float 0.100000001
	.text
	.globl	_ZN10GpuSimpler10deconvolveEv
	.p2align	4, 0x90
	.type	_ZN10GpuSimpler10deconvolveEv,@function
_ZN10GpuSimpler10deconvolveEv:          # @_ZN10GpuSimpler10deconvolveEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	8(%rdi), %rsi
	movq	40(%rdi), %rdi
	callq	_ZNSt6vectorIfSaIfEEaSERKS1_
	movq	%r14, %rdi
	callq	_ZN10GpuSimpler8memAllocEv
	movq	%r14, %rdi
	callq	_ZN10GpuSimpler7copyH2DEv
	leaq	40(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	callq	hipMalloc
	leaq	32(%rsp), %rdi
	movl	$4096, %esi                     # imm = 0x1000
	callq	hipMalloc
	leaq	24(%rsp), %rdi
	movl	$8, %esi
	callq	hipMalloc
	callq	hipGetLastError
	testl	%eax, %eax
	jne	.LBB5_1
# %bb.3:
	movl	$0, 12(%rsp)
	movq	$0, 56(%rsp)
	movq	40(%rsp), %rsi
	movq	32(%rsp), %rdx
	movq	24(%rsp), %rcx
	movq	16(%r14), %rax
	movq	8(%rax), %rdi
	subq	(%rax), %rdi
	sarq	$2, %rdi
	leaq	12(%rsp), %r8
	leaq	56(%rsp), %r9
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	56(%r14)
	.cfi_adjust_cfa_offset 8
	callq	_ZN10GpuSimpler8findPeakEPfPmS1_RfRmPKfm
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	56(%rsp), %rbx
	movq	24(%r14), %rcx
	movq	%rbx, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB5_4
# %bb.5:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB5_6
.LBB5_4:
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
.LBB5_6:
	movl	%edx, 8(%rsp)
	movl	%eax, 52(%rsp)
	movl	$_ZSt4cout, %edi
	movl	$.L.str.19, %esi
	movl	$19, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movl	$.L.str.20, %esi
	movl	$10, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movss	12(%rsp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movl	$.L.str.21, %esi
	movl	$13, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	24(%r14), %rcx
	movq	%rbx, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB5_7
# %bb.8:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rsi
	jmp	.LBB5_9
.LBB5_7:
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %esi
.LBB5_9:
	movq	%rbp, %rdi
	callq	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rbp
	movl	$.L.str.22, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	24(%r14), %rcx
	movq	%rbx, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB5_10
# %bb.11:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rsi
	jmp	.LBB5_12
.LBB5_10:
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %esi
.LBB5_12:
	movq	%rbp, %rdi
	callq	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB5_41
# %bb.13:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%rbp)
	je	.LBB5_15
# %bb.14:
	movb	67(%rbp), %al
	jmp	.LBB5_16
.LBB5_15:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB5_16:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$1, %r15d
	leaq	4(%rsp), %rbx
	leaq	16(%rsp), %rbp
	leaq	8(%rsp), %r12
	leaq	52(%rsp), %r13
	.p2align	4, 0x90
.LBB5_17:                               # =>This Inner Loop Header: Depth=1
	movl	$0, 4(%rsp)
	movq	$0, 16(%rsp)
	movq	40(%rsp), %rsi
	movq	32(%rsp), %rdx
	movq	24(%rsp), %rcx
	movq	40(%r14), %rax
	movq	8(%rax), %rdi
	subq	(%rax), %rdi
	sarq	$2, %rdi
	movq	%rbx, %r8
	movq	%rbp, %r9
	pushq	%rdi
	.cfi_adjust_cfa_offset 8
	pushq	64(%r14)
	.cfi_adjust_cfa_offset 8
	callq	_ZN10GpuSimpler8findPeakEPfPmS1_RfRmPKfm
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpq	$1, %r15
	je	.LBB5_20
# %bb.18:                               #   in Loop: Header=BB5_17 Depth=1
	movzwl	%r15w, %eax
	shrl	$2, %eax
	imull	$5243, %eax, %eax               # imm = 0x147B
	shrl	$17, %eax
	imull	$-100, %eax, %eax
	addl	%r15d, %eax
	testw	%ax, %ax
	je	.LBB5_20
# %bb.19:                               # %._crit_edge
                                        #   in Loop: Header=BB5_17 Depth=1
	movss	4(%rsp), %xmm2                  # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB5_31
	.p2align	4, 0x90
.LBB5_20:                               #   in Loop: Header=BB5_17 Depth=1
	movq	%r13, %r12
	movl	$_ZSt4cout, %edi
	movl	$.L.str.23, %esi
	movl	$11, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movq	%r15, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rbx
	movl	$.L.str.24, %esi
	movl	$13, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movss	4(%rsp), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, 64(%rsp)                 # 16-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movl	$.L.str.21, %esi
	movl	$13, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	16(%rsp), %r13
	movq	24(%r14), %rcx
	movq	%r13, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB5_21
# %bb.22:                               #   in Loop: Header=BB5_17 Depth=1
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB5_23
.LBB5_21:                               #   in Loop: Header=BB5_17 Depth=1
	movl	%r13d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
.LBB5_23:                               #   in Loop: Header=BB5_17 Depth=1
	movq	%rbp, %rdi
	movq	%rdx, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rbp
	movl	$.L.str.22, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	24(%r14), %rcx
	movq	%r13, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB5_24
# %bb.25:                               #   in Loop: Header=BB5_17 Depth=1
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB5_26
.LBB5_24:                               #   in Loop: Header=BB5_17 Depth=1
	movl	%r13d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
.LBB5_26:                               #   in Loop: Header=BB5_17 Depth=1
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rbx
	movl	$.L.str.25, %esi
	movl	$10, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_41
# %bb.27:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24
                                        #   in Loop: Header=BB5_17 Depth=1
	cmpb	$0, 56(%rbx)
	movq	%r12, %r13
	je	.LBB5_29
# %bb.28:                               #   in Loop: Header=BB5_17 Depth=1
	movzbl	67(%rbx), %eax
	jmp	.LBB5_30
.LBB5_29:                               #   in Loop: Header=BB5_17 Depth=1
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB5_30:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26
                                        #   in Loop: Header=BB5_17 Depth=1
	movsbl	%al, %esi
	movq	%rbp, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	leaq	4(%rsp), %rbx
	leaq	16(%rsp), %rbp
	leaq	8(%rsp), %r12
	movaps	64(%rsp), %xmm2                 # 16-byte Reload
.LBB5_31:                               #   in Loop: Header=BB5_17 Depth=1
	movaps	%xmm2, %xmm0
	andps	.LCPI5_0(%rip), %xmm0
	movss	.LCPI5_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB5_32
# %bb.37:                               #   in Loop: Header=BB5_17 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%rbp, %rcx
	movq	%rbx, %r8
	movaps	%xmm2, 64(%rsp)                 # 16-byte Spill
	callq	_ZN10GpuSimpler12subtractPSF2ERKiS1_RKmRKf
	movaps	64(%rsp), %xmm0                 # 16-byte Reload
	mulss	.LCPI5_2(%rip), %xmm0
	movq	32(%r14), %rax
	movq	16(%rsp), %rcx
	movq	(%rax), %rax
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	addq	$1, %r15
	cmpq	$1001, %r15                     # imm = 0x3E9
	jne	.LBB5_17
	jmp	.LBB5_38
.LBB5_32:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.26, %esi
	movl	$26, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_41
# %bb.33:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i29
	cmpb	$0, 56(%rbx)
	je	.LBB5_35
# %bb.34:
	movb	67(%rbx), %al
	jmp	.LBB5_36
.LBB5_35:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB5_36:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit31
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.LBB5_38:                               # %.loopexit
	movq	40(%rsp), %rdi
	callq	hipFree
	movq	32(%rsp), %rdi
	callq	hipFree
	movq	24(%rsp), %rdi
	callq	hipFree
	callq	hipGetLastError
	testl	%eax, %eax
	jne	.LBB5_39
# %bb.40:
	movq	%r14, %rdi
	callq	_ZN10GpuSimpler7copyD2HEv
	addq	$88, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB5_41:
	.cfi_def_cfa_offset 144
	callq	_ZSt16__throw_bad_castv
.LBB5_1:
	movl	%eax, %ebx
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.18, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.12, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbp
	movl	%ebx, %edi
	callq	hipGetErrorString
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.13, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.15, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$218, %esi
	jmp	.LBB5_2
.LBB5_39:
	movl	%eax, %ebx
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.27, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.12, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rbp
	movl	%ebx, %edi
	callq	hipGetErrorString
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.13, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.15, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$268, %esi                      # imm = 0x10C
.LBB5_2:
	callq	_ZNSolsEi
	movl	$.L.str.16, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.17, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$1, %edi
	callq	exit
.Lfunc_end5:
	.size	_ZN10GpuSimpler10deconvolveEv, .Lfunc_end5-_ZN10GpuSimpler10deconvolveEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIfSaIfEEaSERKS1_,"axG",@progbits,_ZNSt6vectorIfSaIfEEaSERKS1_,comdat
	.weak	_ZNSt6vectorIfSaIfEEaSERKS1_    # -- Begin function _ZNSt6vectorIfSaIfEEaSERKS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIfSaIfEEaSERKS1_,@function
_ZNSt6vectorIfSaIfEEaSERKS1_:           # @_ZNSt6vectorIfSaIfEEaSERKS1_
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	cmpq	%rdi, %rsi
	je	.LBB6_17
# %bb.1:
	movq	%rsi, %r12
	movq	(%rsi), %r14
	movq	8(%rsi), %rdx
	movq	%rdx, %rbx
	subq	%r14, %rbx
	movq	%rbx, %r13
	sarq	$2, %r13
	movq	(%r15), %rax
	movq	16(%r15), %rcx
	subq	%rax, %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %r13
	jbe	.LBB6_8
# %bb.2:
	testq	%rbx, %rbx
	js	.LBB6_18
# %bb.3:                                # %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
	movq	%rbx, %rdi
	callq	_Znwm
	movq	%rax, %r12
	testq	%rbx, %rbx
	je	.LBB6_5
# %bb.4:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB6_5:                                # %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB6_7
# %bb.6:
	callq	_ZdlPv
.LBB6_7:                                # %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit
	movq	%r12, (%r15)
	leaq	(%r12,%r13,4), %rax
	movq	%rax, 16(%r15)
	jmp	.LBB6_16
.LBB6_8:
	movq	8(%r15), %rdi
	movq	%rdi, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsi
	sarq	$2, %rsi
	cmpq	%r13, %rsi
	jae	.LBB6_9
# %bb.11:
	testq	%rcx, %rcx
	je	.LBB6_12
# %bb.13:
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rcx, %rdx
	callq	memmove@PLT
	movq	(%r12), %r14
	movq	8(%r12), %rdx
	movq	8(%r15), %rdi
	movq	%rdi, %rax
	subq	(%r15), %rax
	sarq	$2, %rax
	leaq	(%r14,%rax,4), %rsi
	subq	%rsi, %rdx
	jne	.LBB6_15
	jmp	.LBB6_16
.LBB6_9:
	testq	%rbx, %rbx
	je	.LBB6_16
# %bb.10:
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	jmp	.LBB6_15
.LBB6_12:
	xorl	%eax, %eax
	leaq	(%r14,%rax,4), %rsi
	subq	%rsi, %rdx
	je	.LBB6_16
.LBB6_15:
	callq	memmove@PLT
.LBB6_16:                               # %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit
	shlq	$2, %r13
	addq	(%r15), %r13
	movq	%r13, 8(%r15)
.LBB6_17:
	movq	%r15, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_18:
	.cfi_def_cfa_offset 48
	callq	_ZSt17__throw_bad_allocv
.Lfunc_end6:
	.size	_ZNSt6vectorIfSaIfEEaSERKS1_, .Lfunc_end6-_ZNSt6vectorIfSaIfEEaSERKS1_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN10GpuSimpler8memAllocEv      # -- Begin function _ZN10GpuSimpler8memAllocEv
	.p2align	4, 0x90
	.type	_ZN10GpuSimpler8memAllocEv,@function
_ZN10GpuSimpler8memAllocEv:             # @_ZN10GpuSimpler8memAllocEv
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	addq	$48, %rdi
	movq	72(%rbx), %rsi
	callq	hipMalloc
	leaq	56(%rbx), %rdi
	movq	72(%rbx), %rsi
	callq	hipMalloc
	movq	72(%rbx), %rsi
	addq	$64, %rbx
	movq	%rbx, %rdi
	callq	hipMalloc
	callq	hipGetLastError
	testl	%eax, %eax
	jne	.LBB7_2
# %bb.1:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB7_2:
	.cfi_def_cfa_offset 32
	movl	%eax, %ebx
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.32, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.12, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r14
	movl	%ebx, %edi
	callq	hipGetErrorString
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.13, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.15, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$304, %esi                      # imm = 0x130
	callq	_ZNSolsEi
	movl	$.L.str.16, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.17, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$1, %edi
	callq	exit
.Lfunc_end7:
	.size	_ZN10GpuSimpler8memAllocEv, .Lfunc_end7-_ZN10GpuSimpler8memAllocEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10GpuSimpler7copyH2DEv       # -- Begin function _ZN10GpuSimpler7copyH2DEv
	.p2align	4, 0x90
	.type	_ZN10GpuSimpler7copyH2DEv,@function
_ZN10GpuSimpler7copyH2DEv:              # @_ZN10GpuSimpler7copyH2DEv
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	8(%rdi), %rax
	movq	48(%rdi), %rdi
	movq	(%rax), %rsi
	movq	72(%rbx), %rdx
	movl	$1, %ecx
	callq	hipMemcpy
	movq	16(%rbx), %rax
	movq	56(%rbx), %rdi
	movq	(%rax), %rsi
	movq	72(%rbx), %rdx
	movl	$1, %ecx
	callq	hipMemcpy
	movq	40(%rbx), %rax
	movq	64(%rbx), %rdi
	movq	(%rax), %rsi
	movq	72(%rbx), %rdx
	movl	$1, %ecx
	callq	hipMemcpy
	callq	hipGetLastError
	testl	%eax, %eax
	jne	.LBB8_2
# %bb.1:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB8_2:
	.cfi_def_cfa_offset 32
	movl	%eax, %ebx
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.34, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.12, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r14
	movl	%ebx, %edi
	callq	hipGetErrorString
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.13, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.15, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$320, %esi                      # imm = 0x140
	callq	_ZNSolsEi
	movl	$.L.str.16, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.17, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$1, %edi
	callq	exit
.Lfunc_end8:
	.size	_ZN10GpuSimpler7copyH2DEv, .Lfunc_end8-_ZN10GpuSimpler7copyH2DEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10GpuSimpler8findPeakEPfPmS1_RfRmPKfm # -- Begin function _ZN10GpuSimpler8findPeakEPfPmS1_RfRmPKfm
	.p2align	4, 0x90
	.type	_ZN10GpuSimpler8findPeakEPfPmS1_RfRmPKfm,@function
_ZN10GpuSimpler8findPeakEPfPmS1_RfRmPKfm: # @_ZN10GpuSimpler8findPeakEPfPmS1_RfRmPKfm
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:                                # %.noexc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 128(%rsp)                  # 8-byte Spill
	movq	%r8, %r13
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %rbp
	.cfi_escape 0x2e, 0x00
	movl	$2048, %edi                     # imm = 0x800
	callq	_Znwm
	.cfi_escape 0x2e, 0x00
	movl	$2048, %edx                     # imm = 0x800
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp0:
	.cfi_escape 0x2e, 0x00
	movl	$4096, %edi                     # imm = 0x1000
	callq	_Znwm
.Ltmp1:
# %bb.1:                                # %.noexc61
	.cfi_escape 0x2e, 0x00
	movl	$4096, %edx                     # imm = 0x1000
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp3:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967808, %rdi               # imm = 0x100000200
	movabsq	$4294967424, %rdx               # imm = 0x100000080
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
.Ltmp4:
# %bb.2:
	testl	%eax, %eax
	jne	.LBB9_5
# %bb.3:
	movq	200(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, 88(%rsp)
	movq	%rbp, 80(%rsp)
	movq	%r14, 72(%rsp)
	movq	%rax, 64(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 120(%rsp)
.Ltmp5:
	.cfi_escape 0x2e, 0x00
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration
.Ltmp6:
# %bb.4:                                # %.noexc62
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
.Ltmp7:
	.cfi_escape 0x2e, 0x10
	leaq	96(%rsp), %r9
	movl	$_Z23dFindPeak_Step1_SimplerPKfPfPmm, %edi
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp8:
.LBB9_5:
.Ltmp9:
	.cfi_escape 0x2e, 0x00
	callq	hipGetLastError
.Ltmp10:
# %bb.6:
	movl	%eax, %r15d
	testl	%eax, %eax
	jne	.LBB9_7
# %bb.24:
.Ltmp40:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967297, %rdi               # imm = 0x100000001
	movabsq	$4294967424, %rdx               # imm = 0x100000080
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
.Ltmp41:
# %bb.25:
	testl	%eax, %eax
	jne	.LBB9_28
# %bb.26:
	movq	%rbp, 88(%rsp)
	movq	%r14, 80(%rsp)
	movq	%r12, 72(%rsp)
	movq	$512, 64(%rsp)                  # imm = 0x200
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 120(%rsp)
.Ltmp42:
	.cfi_escape 0x2e, 0x00
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration
.Ltmp43:
# %bb.27:                               # %.noexc93
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
.Ltmp44:
	.cfi_escape 0x2e, 0x10
	leaq	96(%rsp), %r9
	movl	$_Z23dFindPeak_Step2_SimplerPfPmS0_m, %edi
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp45:
.LBB9_28:
.Ltmp46:
	.cfi_escape 0x2e, 0x00
	callq	hipGetLastError
.Ltmp47:
# %bb.29:
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB9_30
# %bb.46:
.Ltmp77:
	.cfi_escape 0x2e, 0x00
	movl	$4, %edx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%rbp, %rsi
	movl	$2, %ecx
	callq	hipMemcpy
.Ltmp78:
# %bb.47:
.Ltmp79:
	.cfi_escape 0x2e, 0x00
	callq	hipGetLastError
.Ltmp80:
# %bb.48:
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB9_49
# %bb.65:
.Ltmp110:
	.cfi_escape 0x2e, 0x00
	movl	$8, %edx
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r12, %rsi
	movl	$2, %ecx
	callq	hipMemcpy
.Ltmp111:
# %bb.66:
.Ltmp113:
	.cfi_escape 0x2e, 0x00
	callq	hipGetLastError
.Ltmp114:
# %bb.67:
	movl	%eax, %ebx
	testl	%eax, %eax
	movq	(%rsp), %rdi                    # 8-byte Reload
	jne	.LBB9_68
# %bb.84:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movss	(%rbx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%r13)
	movq	(%rdi), %rax
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZdlPv
	addq	$136, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB9_7:
	.cfi_def_cfa_offset 192
.Ltmp11:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	movl	$3, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp12:
# %bb.8:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp13:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.10, %esi
	movl	$14, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp14:
# %bb.9:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
.Ltmp15:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.28, %esi
	movl	$28, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp16:
# %bb.10:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
.Ltmp17:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.12, %esi
	movl	$2, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp18:
# %bb.11:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
.Ltmp19:
	.cfi_escape 0x2e, 0x00
	movl	%r15d, %edi
	callq	hipGetErrorString
.Ltmp20:
# %bb.12:
.Ltmp21:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp22:
# %bb.13:
	movq	%rax, %rbx
.Ltmp23:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.13, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp24:
# %bb.14:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
.Ltmp25:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.14, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp26:
# %bb.15:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
.Ltmp27:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.15, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp28:
# %bb.16:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
.Ltmp29:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$284, %esi                      # imm = 0x11C
	callq	_ZNSolsEi
.Ltmp30:
# %bb.17:
	movq	%rax, %rbx
.Ltmp31:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.16, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp32:
# %bb.18:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
.Ltmp33:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp34:
# %bb.19:                               # %_ZNSolsEPFRSoS_E.exit
.Ltmp35:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.17, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp36:
# %bb.20:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
.Ltmp37:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp38:
# %bb.21:                               # %_ZNSolsEPFRSoS_E.exit83
	.cfi_escape 0x2e, 0x00
	movl	$1, %edi
	callq	exit
.LBB9_30:
.Ltmp48:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	movl	$3, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp49:
# %bb.31:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
.Ltmp50:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.10, %esi
	movl	$14, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp51:
# %bb.32:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
.Ltmp52:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.29, %esi
	movl	$28, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp53:
# %bb.33:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
.Ltmp54:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.12, %esi
	movl	$2, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp55:
# %bb.34:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
.Ltmp56:
	.cfi_escape 0x2e, 0x00
	movl	%ebx, %edi
	callq	hipGetErrorString
.Ltmp57:
# %bb.35:
.Ltmp58:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp59:
# %bb.36:
	movq	%rax, %rbx
.Ltmp60:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.13, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp61:
# %bb.37:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
.Ltmp62:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.14, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp63:
# %bb.38:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
.Ltmp64:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.15, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp65:
# %bb.39:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
.Ltmp66:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$286, %esi                      # imm = 0x11E
	callq	_ZNSolsEi
.Ltmp67:
# %bb.40:
	movq	%rax, %rbx
.Ltmp68:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.16, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp69:
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110
.Ltmp70:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp71:
# %bb.42:                               # %_ZNSolsEPFRSoS_E.exit112
.Ltmp72:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.17, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp73:
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
.Ltmp74:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp75:
# %bb.44:                               # %_ZNSolsEPFRSoS_E.exit116
	.cfi_escape 0x2e, 0x00
	movl	$1, %edi
	callq	exit
.LBB9_49:
.Ltmp81:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	movl	$3, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp82:
# %bb.50:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
.Ltmp83:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.10, %esi
	movl	$14, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp84:
# %bb.51:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120
.Ltmp85:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.30, %esi
	movl	$41, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp86:
# %bb.52:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit122
.Ltmp87:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.12, %esi
	movl	$2, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp88:
# %bb.53:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
.Ltmp89:
	.cfi_escape 0x2e, 0x00
	movl	%ebx, %edi
	callq	hipGetErrorString
.Ltmp90:
# %bb.54:
.Ltmp91:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp92:
# %bb.55:
	movq	%rax, %rbx
.Ltmp93:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.13, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp94:
# %bb.56:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126
.Ltmp95:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.14, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp96:
# %bb.57:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128
.Ltmp97:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.15, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp98:
# %bb.58:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
.Ltmp99:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$289, %esi                      # imm = 0x121
	callq	_ZNSolsEi
.Ltmp100:
# %bb.59:
	movq	%rax, %rbx
.Ltmp101:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.16, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp102:
# %bb.60:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
.Ltmp103:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp104:
# %bb.61:                               # %_ZNSolsEPFRSoS_E.exit134
.Ltmp105:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.17, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp106:
# %bb.62:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136
.Ltmp107:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp108:
# %bb.63:                               # %_ZNSolsEPFRSoS_E.exit138
	.cfi_escape 0x2e, 0x00
	movl	$1, %edi
	callq	exit
.LBB9_68:
.Ltmp115:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	movl	$3, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp116:
# %bb.69:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140
.Ltmp117:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.10, %esi
	movl	$14, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp118:
# %bb.70:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
.Ltmp119:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.31, %esi
	movl	$43, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp120:
# %bb.71:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144
.Ltmp121:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.12, %esi
	movl	$2, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp122:
# %bb.72:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
.Ltmp123:
	.cfi_escape 0x2e, 0x00
	movl	%ebx, %edi
	callq	hipGetErrorString
.Ltmp124:
# %bb.73:
.Ltmp125:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp126:
# %bb.74:
	movq	%rax, %rbx
.Ltmp127:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.13, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp128:
# %bb.75:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit148
.Ltmp129:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.14, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp130:
# %bb.76:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150
.Ltmp131:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.15, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp132:
# %bb.77:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152
.Ltmp133:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movl	$291, %esi                      # imm = 0x123
	callq	_ZNSolsEi
.Ltmp134:
# %bb.78:
	movq	%rax, %rbx
.Ltmp135:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.16, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp136:
# %bb.79:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154
.Ltmp137:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp138:
# %bb.80:                               # %_ZNSolsEPFRSoS_E.exit156
.Ltmp139:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.17, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp140:
# %bb.81:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit158
.Ltmp141:
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp142:
# %bb.82:                               # %_ZNSolsEPFRSoS_E.exit160
	.cfi_escape 0x2e, 0x00
	movl	$1, %edi
	callq	exit
.LBB9_22:
.Ltmp2:
	movq	%rax, %rbx
	jmp	.LBB9_87
.LBB9_83:
.Ltmp143:
	jmp	.LBB9_86
.LBB9_64:
.Ltmp109:
	jmp	.LBB9_86
.LBB9_45:
.Ltmp76:
	jmp	.LBB9_86
.LBB9_23:
.Ltmp39:
	jmp	.LBB9_86
.LBB9_85:
.Ltmp112:
.LBB9_86:                               # %_ZNSt6vectorImSaImEED2Ev.exit163
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZdlPv
.LBB9_87:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit165
	.cfi_escape 0x2e, 0x00
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZdlPv
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end9:
	.size	_ZN10GpuSimpler8findPeakEPfPmS1_RfRmPKfm, .Lfunc_end9-_ZN10GpuSimpler8findPeakEPfPmS1_RfRmPKfm
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table9:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp8-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp8
	.uleb128 .Ltmp112-.Lfunc_begin0         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp45-.Ltmp40                #   Call between .Ltmp40 and .Ltmp45
	.uleb128 .Ltmp112-.Lfunc_begin0         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp76-.Lfunc_begin0          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp112-.Lfunc_begin0         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp109-.Lfunc_begin0         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin0         # >> Call Site 10 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin0         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin0         # >> Call Site 11 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp143-.Lfunc_begin0         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp38-.Ltmp11                #   Call between .Ltmp11 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp75-.Ltmp48                #   Call between .Ltmp48 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin0          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp108-.Ltmp81               #   Call between .Ltmp81 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin0         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin0         # >> Call Site 15 <<
	.uleb128 .Ltmp142-.Ltmp115              #   Call between .Ltmp115 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin0         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 16 <<
	.uleb128 .Lfunc_end9-.Ltmp142           #   Call between .Ltmp142 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.text
	.globl	_ZN10GpuSimpler7copyD2HEv       # -- Begin function _ZN10GpuSimpler7copyD2HEv
	.p2align	4, 0x90
	.type	_ZN10GpuSimpler7copyD2HEv,@function
_ZN10GpuSimpler7copyD2HEv:              # @_ZN10GpuSimpler7copyD2HEv
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	40(%rdi), %rax
	movq	64(%rdi), %rsi
	movq	(%rax), %rax
	movq	72(%rdi), %rdx
	movq	%rax, %rdi
	movl	$2, %ecx
	callq	hipMemcpy
	callq	hipGetLastError
	testl	%eax, %eax
	jne	.LBB10_2
# %bb.1:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:
	.cfi_def_cfa_offset 32
	movl	%eax, %ebx
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.10, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.35, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.12, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r14
	movl	%ebx, %edi
	callq	hipGetErrorString
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.13, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.15, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$326, %esi                      # imm = 0x146
	callq	_ZNSolsEi
	movl	$.L.str.16, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.17, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$1, %edi
	callq	exit
.Lfunc_end10:
	.size	_ZN10GpuSimpler7copyD2HEv, .Lfunc_end10-_ZN10GpuSimpler7copyD2HEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10GpuSimplerD2Ev             # -- Begin function _ZN10GpuSimplerD2Ev
	.p2align	4, 0x90
	.type	_ZN10GpuSimplerD2Ev,@function
_ZN10GpuSimplerD2Ev:                    # @_ZN10GpuSimplerD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	$_ZTV10GpuSimpler+16, (%rdi)
	movq	48(%rdi), %rdi
.Ltmp144:
	callq	hipFree
.Ltmp145:
# %bb.1:
	movq	56(%rbx), %rdi
.Ltmp146:
	callq	hipFree
.Ltmp147:
# %bb.2:
	movq	64(%rbx), %rdi
.Ltmp148:
	callq	hipFree
.Ltmp149:
# %bb.3:
.Ltmp151:
	callq	hipGetLastError
.Ltmp152:
# %bb.4:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB11_5
# %bb.21:
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZN7IHogbomD2Ev                 # TAILCALL
.LBB11_5:
	.cfi_def_cfa_offset 32
.Ltmp153:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.9, %esi
	movl	$3, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp154:
# %bb.6:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp155:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.10, %esi
	movl	$14, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp156:
# %bb.7:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
.Ltmp157:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.33, %esi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp158:
# %bb.8:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
.Ltmp159:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.12, %esi
	movl	$2, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp160:
# %bb.9:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
.Ltmp161:
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp162:
# %bb.10:
.Ltmp163:
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp164:
# %bb.11:
	movq	%rax, %rbp
.Ltmp165:
	movl	$.L.str.13, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp166:
# %bb.12:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
.Ltmp167:
	movl	$.L.str.14, %esi
	movl	$14, %edx
	movq	%rbp, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp168:
# %bb.13:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
.Ltmp169:
	movl	$.L.str.15, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp170:
# %bb.14:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
.Ltmp171:
	movq	%rbp, %rdi
	movl	$312, %esi                      # imm = 0x138
	callq	_ZNSolsEi
.Ltmp172:
# %bb.15:
	movq	%rax, %rbp
.Ltmp173:
	movl	$.L.str.16, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp174:
# %bb.16:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
.Ltmp175:
	movq	%rbp, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp176:
# %bb.17:                               # %_ZNSolsEPFRSoS_E.exit
.Ltmp177:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.17, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp178:
# %bb.18:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
.Ltmp179:
	movl	$_ZSt4cerr, %edi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp180:
# %bb.19:                               # %_ZNSolsEPFRSoS_E.exit14
	movl	$1, %edi
	callq	exit
.LBB11_20:
.Ltmp181:
	jmp	.LBB11_23
.LBB11_22:
.Ltmp150:
.LBB11_23:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	callq	_ZN7IHogbomD2Ev
	movq	%rbp, %rdi
	callq	__clang_call_terminate
.Lfunc_end11:
	.size	_ZN10GpuSimplerD2Ev, .Lfunc_end11-_ZN10GpuSimplerD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table11:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp144-.Lfunc_begin1         # >> Call Site 1 <<
	.uleb128 .Ltmp149-.Ltmp144              #   Call between .Ltmp144 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin1         #     jumps to .Ltmp150
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp151-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp180-.Ltmp151              #   Call between .Ltmp151 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin1         #     jumps to .Ltmp181
	.byte	1                               #   On action: 1
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end12:
	.size	__clang_call_terminate, .Lfunc_end12-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN10GpuSimplerD0Ev             # -- Begin function _ZN10GpuSimplerD0Ev
	.p2align	4, 0x90
	.type	_ZN10GpuSimplerD0Ev,@function
_ZN10GpuSimplerD0Ev:                    # @_ZN10GpuSimplerD0Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZN10GpuSimplerD2Ev
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                          # TAILCALL
.Lfunc_end13:
	.size	_ZN10GpuSimplerD0Ev, .Lfunc_end13-_ZN10GpuSimplerD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z,"axG",@progbits,_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z,comdat
	.weak	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z # -- Begin function _ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z,@function
_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z: # @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%r8, -208(%rbp)
	movq	%r9, -200(%rbp)
	testb	%al, %al
	je	.LBB14_8
# %bb.7:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB14_8:
	movq	%rsp, %r14
	leaq	15(%rdx), %rax
	andq	$-16, %rax
	subq	%rax, %r14
	movq	%r14, %rsp
	leaq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movabsq	$206158430240, %rax             # imm = 0x3000000020
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%r14, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	*%rbx
	movslq	%eax, %rbx
	leaq	16(%r15), %rax
	movq	%rax, (%r15)
	movq	%rbx, -32(%rbp)
	cmpl	$16, %ebx
	jb	.LBB14_2
# %bb.1:                                # %.noexc5.i
	leaq	-32(%rbp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	%rax, (%r15)
	movq	-32(%rbp), %rcx
	movq	%rcx, 16(%r15)
.LBB14_2:                               # %._crit_edge.i.i.i.i
	testq	%rbx, %rbx
	je	.LBB14_6
# %bb.3:                                # %._crit_edge.i.i.i.i
	cmpq	$1, %rbx
	jne	.LBB14_5
# %bb.4:
	movb	(%r14), %cl
	movb	%cl, (%rax)
	jmp	.LBB14_6
.LBB14_5:
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB14_6:
	movq	-32(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	(%r15), %rcx
	movb	$0, (%rcx,%rax)
	movq	%r15, %rax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z, .Lfunc_end14-_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7IHogbomD2Ev,"axG",@progbits,_ZN7IHogbomD2Ev,comdat
	.weak	_ZN7IHogbomD2Ev                 # -- Begin function _ZN7IHogbomD2Ev
	.p2align	4, 0x90
	.type	_ZN7IHogbomD2Ev,@function
_ZN7IHogbomD2Ev:                        # @_ZN7IHogbomD2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	$_ZTV7IHogbom+16, (%rdi)
.Ltmp182:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.38, %esi
	movl	$28, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp183:
# %bb.1:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB15_2
# %bb.4:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%rbx)
	je	.LBB15_6
# %bb.5:
	movb	67(%rbx), %al
	jmp	.LBB15_8
.LBB15_6:
.Ltmp184:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp185:
# %bb.7:                                # %.noexc1
	movq	(%rbx), %rax
.Ltmp186:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp187:
.LBB15_8:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp188:
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
.Ltmp189:
# %bb.9:                                # %.noexc3
.Ltmp190:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp191:
# %bb.10:                               # %_ZNSolsEPFRSoS_E.exit
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB15_2:
	.cfi_def_cfa_offset 16
.Ltmp192:
	callq	_ZSt16__throw_bad_castv
.Ltmp193:
# %bb.3:                                # %.noexc
.LBB15_11:
.Ltmp194:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end15:
	.size	_ZN7IHogbomD2Ev, .Lfunc_end15-_ZN7IHogbomD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN7IHogbomD2Ev,"aG",@progbits,_ZN7IHogbomD2Ev,comdat
	.p2align	2
GCC_except_table15:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp182-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp193-.Ltmp182              #   Call between .Ltmp182 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin2         #     jumps to .Ltmp194
	.byte	1                               #   On action: 1
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.text._ZN7IHogbomD0Ev,"axG",@progbits,_ZN7IHogbomD0Ev,comdat
	.weak	_ZN7IHogbomD0Ev                 # -- Begin function _ZN7IHogbomD0Ev
	.p2align	4, 0x90
	.type	_ZN7IHogbomD0Ev,@function
_ZN7IHogbomD0Ev:                        # @_ZN7IHogbomD0Ev
	.cfi_startproc
# %bb.0:
	ud2
.Lfunc_end16:
	.size	_ZN7IHogbomD0Ev, .Lfunc_end16-_ZN7IHogbomD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_GpuSimpler.hip
	.type	_GLOBAL__sub_I_GpuSimpler.hip,@function
_GLOBAL__sub_I_GpuSimpler.hip:          # @_GLOBAL__sub_I_GpuSimpler.hip
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	leaq	32(%rsp), %rbx
	movl	$vsnprintf, %esi
	movl	$16, %edx
	movl	$.L.str.36, %ecx
	movq	%rbx, %rdi
	movl	$4096, %r8d                     # imm = 0x1000
	xorl	%eax, %eax
	callq	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z
.Ltmp195:
	movl	$.L.str, %ecx
	movl	$14, %r8d
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.Ltmp196:
# %bb.1:                                # %.noexc.i
	leaq	16(%rsp), %r14
	movq	%r14, (%rsp)
	movq	(%rax), %rdx
	movq	%rax, %rcx
	addq	$16, %rcx
	cmpq	%rcx, %rdx
	je	.LBB17_2
# %bb.3:
	movq	%rdx, (%rsp)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rsp)
	jmp	.LBB17_4
.LBB17_2:
	movups	(%rdx), %xmm0
	movups	%xmm0, (%r14)
.LBB17_4:
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	8(%rsp), %rax
	shrq	$2, %rax
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	je	.LBB17_5
# %bb.7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
.Ltmp198:
	movq	%rsp, %rdi
	movl	$.L.str.2, %esi
	movl	$4, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.Ltmp199:
# %bb.8:                                # %.noexc4.i
	movq	$_ZL10gDirtyFileB5cxx11+16, _ZL10gDirtyFileB5cxx11(%rip)
	movq	(%rax), %rdx
	movq	%rax, %rcx
	addq	$16, %rcx
	cmpq	%rcx, %rdx
	je	.LBB17_9
# %bb.10:
	movq	%rdx, _ZL10gDirtyFileB5cxx11(%rip)
	movq	16(%rax), %rdx
	movq	%rdx, _ZL10gDirtyFileB5cxx11+16(%rip)
	jmp	.LBB17_11
.LBB17_9:
	movups	(%rdx), %xmm0
	movups	%xmm0, _ZL10gDirtyFileB5cxx11+16(%rip)
.LBB17_11:
	movq	8(%rax), %rdx
	movq	%rdx, _ZL10gDirtyFileB5cxx11+8(%rip)
	movq	%rcx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB17_13
# %bb.12:
	callq	_ZdlPv
.LBB17_13:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	movq	32(%rsp), %rdi
	leaq	48(%rsp), %r15
	cmpq	%r15, %rdi
	je	.LBB17_15
# %bb.14:
	callq	_ZdlPv
.LBB17_15:                              # %__cxx_global_var_init.1.exit
	movl	$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, %edi
	movl	$_ZL10gDirtyFileB5cxx11, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	leaq	32(%rsp), %rbx
	movl	$vsnprintf, %esi
	movl	$16, %edx
	movl	$.L.str.36, %ecx
	movq	%rbx, %rdi
	movl	$4096, %r8d                     # imm = 0x1000
	xorl	%eax, %eax
	callq	_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z
.Ltmp200:
	movl	$.L.str.4, %ecx
	movl	$12, %r8d
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.Ltmp201:
# %bb.16:                               # %.noexc.i1
	movabsq	$9223372036854775804, %rcx      # imm = 0x7FFFFFFFFFFFFFFC
	movq	%r14, (%rsp)
	movq	(%rax), %rsi
	movq	%rax, %rdx
	addq	$16, %rdx
	cmpq	%rdx, %rsi
	je	.LBB17_17
# %bb.22:
	movq	%rsi, (%rsp)
	movq	16(%rax), %rsi
	movq	%rsi, 16(%rsp)
	jmp	.LBB17_23
.LBB17_17:
	movups	(%rsi), %xmm0
	movups	%xmm0, (%r14)
.LBB17_23:
	movq	8(%rax), %rsi
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	8(%rsp), %rax
	andq	$-4, %rax
	cmpq	%rcx, %rax
	je	.LBB17_24
# %bb.26:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i3
.Ltmp203:
	movq	%rsp, %rdi
	movl	$.L.str.2, %esi
	movl	$4, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.Ltmp204:
# %bb.27:                               # %.noexc4.i4
	movq	$_ZL8gPsfFileB5cxx11+16, _ZL8gPsfFileB5cxx11(%rip)
	movq	(%rax), %rdx
	movq	%rax, %rcx
	addq	$16, %rcx
	cmpq	%rcx, %rdx
	je	.LBB17_28
# %bb.29:
	movq	%rdx, _ZL8gPsfFileB5cxx11(%rip)
	movq	16(%rax), %rdx
	movq	%rdx, _ZL8gPsfFileB5cxx11+16(%rip)
	jmp	.LBB17_30
.LBB17_28:
	movups	(%rdx), %xmm0
	movups	%xmm0, _ZL8gPsfFileB5cxx11+16(%rip)
.LBB17_30:
	movq	8(%rax), %rdx
	movq	%rdx, _ZL8gPsfFileB5cxx11+8(%rip)
	movq	%rcx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB17_32
# %bb.31:
	callq	_ZdlPv
.LBB17_32:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i5
	movq	32(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB17_34
# %bb.33:
	callq	_ZdlPv
.LBB17_34:                              # %__cxx_global_var_init.3.exit
	movl	$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, %edi
	movl	$_ZL8gPsfFileB5cxx11, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	movq	$_ZL13refSolverNameB5cxx11+16, _ZL13refSolverNameB5cxx11(%rip)
	movl	$7696483, _ZL13refSolverNameB5cxx11+16(%rip) # imm = 0x757063
	movq	$3, _ZL13refSolverNameB5cxx11+8(%rip)
	movl	$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, %edi
	movl	$_ZL13refSolverNameB5cxx11, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	movq	$_ZL14testSolverNameB5cxx11+16, _ZL14testSolverNameB5cxx11(%rip)
	movabsq	$7813865652627009639, %rax      # imm = 0x6C706D6953757067
	movq	%rax, _ZL14testSolverNameB5cxx11+16(%rip)
	movw	$29285, _ZL14testSolverNameB5cxx11+24(%rip) # imm = 0x7265
	movq	$10, _ZL14testSolverNameB5cxx11+8(%rip)
	movb	$0, _ZL14testSolverNameB5cxx11+26(%rip)
	movl	$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, %edi
	movl	$_ZL14testSolverNameB5cxx11, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	addq	$64, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB17_5:
	.cfi_def_cfa_offset 96
.Ltmp208:
	movl	$.L.str.41, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp209:
# %bb.6:                                # %.noexc3.i
.LBB17_24:
.Ltmp205:
	movl	$.L.str.41, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp206:
# %bb.25:                               # %.noexc3.i2
.LBB17_35:
.Ltmp202:
	movq	%rax, %rbx
	jmp	.LBB17_38
.LBB17_18:
.Ltmp197:
	movq	%rax, %rbx
	jmp	.LBB17_21
.LBB17_36:
.Ltmp207:
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB17_38
# %bb.37:
	callq	_ZdlPv
.LBB17_38:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i7
	movq	32(%rsp), %rdi
	cmpq	%r15, %rdi
	jne	.LBB17_39
	jmp	.LBB17_40
.LBB17_19:
.Ltmp210:
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB17_21
# %bb.20:
	callq	_ZdlPv
.LBB17_21:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
	movq	32(%rsp), %rdi
	leaq	48(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB17_40
.LBB17_39:
	callq	_ZdlPv
.LBB17_40:                              # %common.resume
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end17:
	.size	_GLOBAL__sub_I_GpuSimpler.hip, .Lfunc_end17-_GLOBAL__sub_I_GpuSimpler.hip
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table17:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp195-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp195
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin3         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp210-.Lfunc_begin3         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin3         #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp207-.Lfunc_begin3         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin3         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin3         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Lfunc_end17-.Ltmp206          #   Call between .Ltmp206 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function __hip_module_ctor
	.type	__hip_module_ctor,@function
__hip_module_ctor:                      # @__hip_module_ctor
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -16
	movq	__hip_gpubin_handle(%rip), %rbx
	testq	%rbx, %rbx
	jne	.LBB18_2
# %bb.1:
	movl	$__hip_fatbin_wrapper, %edi
	callq	__hipRegisterFatBinary
	movq	%rax, %rbx
	movq	%rax, __hip_gpubin_handle(%rip)
.LBB18_2:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z23dFindPeak_Step2_SimplerPfPmS0_m, %esi
	movl	$.L__unnamed_1, %edx
	movl	$.L__unnamed_1, %ecx
	movq	%rbx, %rdi
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z23dFindPeak_Step1_SimplerPKfPfPmm, %esi
	movl	$.L__unnamed_2, %edx
	movl	$.L__unnamed_2, %ecx
	movq	%rbx, %rdi
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff, %esi
	movl	$.L__unnamed_3, %edx
	movl	$.L__unnamed_3, %ecx
	movq	%rbx, %rdi
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	movl	$__hip_module_dtor, %edi
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	atexit                          # TAILCALL
.Lfunc_end18:
	.size	__hip_module_ctor, .Lfunc_end18-__hip_module_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __hip_module_dtor
	.type	__hip_module_dtor,@function
__hip_module_dtor:                      # @__hip_module_dtor
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	__hip_gpubin_handle(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB19_2
# %bb.1:
	callq	__hipUnregisterFatBinary
	movq	$0, __hip_gpubin_handle(%rip)
.LBB19_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	__hip_module_dtor, .Lfunc_end19-__hip_module_dtor
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	_ZL10gDirtyFileB5cxx11,@object  # @_ZL10gDirtyFileB5cxx11
	.local	_ZL10gDirtyFileB5cxx11
	.comm	_ZL10gDirtyFileB5cxx11,32,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"../data/dirty_"
	.size	.L.str, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	".img"
	.size	.L.str.2, 5

	.type	_ZL8gPsfFileB5cxx11,@object     # @_ZL8gPsfFileB5cxx11
	.local	_ZL8gPsfFileB5cxx11
	.comm	_ZL8gPsfFileB5cxx11,32,8
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"../data/psf_"
	.size	.L.str.4, 13

	.type	_ZL13refSolverNameB5cxx11,@object # @_ZL13refSolverNameB5cxx11
	.local	_ZL13refSolverNameB5cxx11
	.comm	_ZL13refSolverNameB5cxx11,32,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"cpu"
	.size	.L.str.6, 4

	.type	_ZL14testSolverNameB5cxx11,@object # @_ZL14testSolverNameB5cxx11
	.local	_ZL14testSolverNameB5cxx11
	.comm	_ZL14testSolverNameB5cxx11,32,8
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"gpuSimpler"
	.size	.L.str.8, 11

	.type	_Z23dFindPeak_Step2_SimplerPfPmS0_m,@object # @_Z23dFindPeak_Step2_SimplerPfPmS0_m
	.section	.rodata,"a",@progbits
	.globl	_Z23dFindPeak_Step2_SimplerPfPmS0_m
	.p2align	3
_Z23dFindPeak_Step2_SimplerPfPmS0_m:
	.quad	_Z38__device_stub__dFindPeak_Step2_SimplerPfPmS0_m
	.size	_Z23dFindPeak_Step2_SimplerPfPmS0_m, 8

	.type	_Z23dFindPeak_Step1_SimplerPKfPfPmm,@object # @_Z23dFindPeak_Step1_SimplerPKfPfPmm
	.globl	_Z23dFindPeak_Step1_SimplerPKfPfPmm
	.p2align	3
_Z23dFindPeak_Step1_SimplerPKfPfPmm:
	.quad	_Z38__device_stub__dFindPeak_Step1_SimplerPKfPfPmm
	.size	_Z23dFindPeak_Step1_SimplerPKfPfPmm, 8

	.type	_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff,@object # @_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff
	.globl	_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff
	.p2align	3
_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff:
	.quad	_Z35__device_stub__dSubtractPSF_SimplerPKfPfiiiiiiiff
	.size	_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff, 8

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"HIP"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" Fatal error: "
	.size	.L.str.10, 15

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"kernel launch failure in subtractPSF"
	.size	.L.str.11, 37

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" ("
	.size	.L.str.12, 3

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" at "
	.size	.L.str.13, 5

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"GpuSimpler.hip"
	.size	.L.str.14, 15

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	":"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	")"
	.size	.L.str.16, 2

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	" *** FAILED - ABORTING "
	.size	.L.str.17, 24

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"gpuMalloc failure!"
	.size	.L.str.18, 19

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Found peak of PSF: "
	.size	.L.str.19, 20

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Maximum = "
	.size	.L.str.20, 11

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	" at location "
	.size	.L.str.21, 14

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	","
	.size	.L.str.22, 2

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Iteration: "
	.size	.L.str.23, 12

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	" - Maximum = "
	.size	.L.str.24, 14

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	", index = "
	.size	.L.str.25, 11

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Reached stopping threshold"
	.size	.L.str.26, 27

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"gpuFree failure!"
	.size	.L.str.27, 17

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"gpu kernel launch 1 failure!"
	.size	.L.str.28, 29

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"gpu kernel launch 2 failure!"
	.size	.L.str.29, 29

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"gpuMemcpy D2H failure in findPeak (hmax)!"
	.size	.L.str.30, 42

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"gpuMemcpy D2H failure in findPeak (hindex)!"
	.size	.L.str.31, 44

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"gpuMalloc failure"
	.size	.L.str.32, 18

	.type	_ZTV10GpuSimpler,@object        # @_ZTV10GpuSimpler
	.section	.rodata,"a",@progbits
	.globl	_ZTV10GpuSimpler
	.p2align	3
_ZTV10GpuSimpler:
	.quad	0
	.quad	_ZTI10GpuSimpler
	.quad	_ZN10GpuSimpler11subtractPSFEmmf
	.quad	_ZN10GpuSimplerD2Ev
	.quad	_ZN10GpuSimplerD0Ev
	.quad	_ZN10GpuSimpler10deconvolveEv
	.size	_ZTV10GpuSimpler, 48

	.type	.L.str.33,@object               # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"gpuFree failure"
	.size	.L.str.33, 16

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"gpuMemcpy H2D failure"
	.size	.L.str.34, 22

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"gpuMemcpy D2H failure"
	.size	.L.str.35, 22

	.type	_ZTS10GpuSimpler,@object        # @_ZTS10GpuSimpler
	.section	.rodata,"a",@progbits
	.globl	_ZTS10GpuSimpler
_ZTS10GpuSimpler:
	.asciz	"10GpuSimpler"
	.size	_ZTS10GpuSimpler, 13

	.type	_ZTS7IHogbom,@object            # @_ZTS7IHogbom
	.section	.rodata._ZTS7IHogbom,"aG",@progbits,_ZTS7IHogbom,comdat
	.weak	_ZTS7IHogbom
_ZTS7IHogbom:
	.asciz	"7IHogbom"
	.size	_ZTS7IHogbom, 9

	.type	_ZTI7IHogbom,@object            # @_ZTI7IHogbom
	.section	.rodata._ZTI7IHogbom,"aG",@progbits,_ZTI7IHogbom,comdat
	.weak	_ZTI7IHogbom
	.p2align	3
_ZTI7IHogbom:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS7IHogbom
	.size	_ZTI7IHogbom, 16

	.type	_ZTI10GpuSimpler,@object        # @_ZTI10GpuSimpler
	.section	.rodata,"a",@progbits
	.globl	_ZTI10GpuSimpler
	.p2align	3
_ZTI10GpuSimpler:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS10GpuSimpler
	.quad	_ZTI7IHogbom
	.size	_ZTI10GpuSimpler, 24

	.type	.L.str.36,@object               # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"%d"
	.size	.L.str.36, 3

	.type	_ZTV7IHogbom,@object            # @_ZTV7IHogbom
	.section	.rodata._ZTV7IHogbom,"aG",@progbits,_ZTV7IHogbom,comdat
	.weak	_ZTV7IHogbom
	.p2align	3
_ZTV7IHogbom:
	.quad	0
	.quad	_ZTI7IHogbom
	.quad	__cxa_pure_virtual
	.quad	_ZN7IHogbomD2Ev
	.quad	_ZN7IHogbomD0Ev
	.quad	__cxa_pure_virtual
	.size	_ZTV7IHogbom, 48

	.type	.L.str.38,@object               # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"IHogbom interface destructor"
	.size	.L.str.38, 29

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"basic_string::append"
	.size	.L.str.41, 21

	.type	.L__unnamed_1,@object           # @0
.L__unnamed_1:
	.asciz	"_Z23dFindPeak_Step2_SimplerPfPmS0_m"
	.size	.L__unnamed_1, 36

	.type	.L__unnamed_2,@object           # @1
.L__unnamed_2:
	.asciz	"_Z23dFindPeak_Step1_SimplerPKfPfPmm"
	.size	.L__unnamed_2, 36

	.type	.L__unnamed_3,@object           # @2
.L__unnamed_3:
	.asciz	"_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff"
	.size	.L__unnamed_3, 39

	.type	.L__unnamed_4,@object           # @3
	.section	.hip_fatbin,"a",@progbits
	.p2align	12
.L__unnamed_4:
	.asciz	"__CLANG_OFFLOAD_BUNDLE__\002\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\000\000\000\000\000\000\000host-x86_64-unknown-linux\000\020\000\000\000\000\000\000\220(\000\000\000\000\000\000\037\000\000\000\000\000\000\000hipv4-amdgcn-amd-amdhsa--gfx90a\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177ELF\002\001\001@\002\000\000\000\000\000\000\000\003\000\340\000\001\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\020%\000\000\000\000\000\000?\005\000\000@\0008\000\b\000@\000\016\000\f\000\006\000\000\000\004\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\300\001\000\000\000\000\000\000\300\001\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\207\017\000\000\000\000\000\000\207\017\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\005\000\000\000\000\020\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\n\000\000\000\000\000\000\000\n\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000p\000\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\002\000\000\000\006\000\000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000p\000\000\000\000\000\000\000p\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000R\345td\004\000\000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000p\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\000\000\000\000Q\345td\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\004\000\000\000\000\002\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\002\000\000\000\000\000\0000\b\000\000\000\000\000\0000\b\000\000\000\000\000\000\004\000\000\000\000\000\000\000\007\000\000\000\034\b\000\000 \000\000\000AMDGPU\000\000\203\256amdhsa.kernels\223\217\245.args\224\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\020\245.size\b\253.value_kind\255global_buffer\203\247.offset\030\245.size\b\253.value_kind\250by_value\271.group_segment_fixed_size\315\006\000\266.kernarg_segment_align\b\265.kernarg_segment_size \251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\004\000\245.name\331#_Z23dFindPeak_Step2_SimplerPfPmS0_m\273.private_segment_fixed_size\000\253.sgpr_count\030\261.sgpr_spill_count\000\247.symbol\331&_Z23dFindPeak_Step2_SimplerPfPmS0_m.kd\253.vgpr_count\016\261.vgpr_spill_count\000\257.wavefront_size@\217\245.args\224\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\020\245.size\b\253.value_kind\255global_buffer\203\247.offset\030\245.size\b\253.value_kind\250by_value\271.group_segment_fixed_size\315\006\000\266.kernarg_segment_align\b\265.kernarg_segment_size \251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\004\000\245.name\331#_Z23dFindPeak_Step1_SimplerPKfPfPmm\273.private_segment_fixed_size\000\253.sgpr_count\026\261.sgpr_spill_count\000\247.symbol\331&_Z23dFindPeak_Step1_SimplerPKfPfPmm.kd\253.vgpr_count\t\261.vgpr_spill_count\000\257.wavefront_size@\217\245.args\233\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\203\247.offset\020\245.size\004\253.value_kind\250by_value\203\247.offset\024\245.size\004\253.value_kind\250by_value\203\247.offset\030\245.size\004\253.value_kind\250by_value\203\247.offset\034\245.size\004\253.value_kind\250by_value\203\247.offset \245.size\004\253.value_kind\250by_value\203\247.offset$\245.size\004\253.value_kind\250by_value\203\247.offset(\245.size\004\253.value_kind\250by_value\203\247.offset,\245.size\004\253.value_kind\250by_value\203\247.offset0\245.size\004\253.value_kind\250by_value\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_size4\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\004\000\245.name\331&_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff\273.private_segment_fixed_size\000\253.sgpr_count\026\261.sgpr_spill_count\000\247.symbol\331)_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff.kd\253.vgpr_count\005\261.vgpr_spill_count\000\257.wavefront_size@\255amdhsa.target\271amdgcn-amd-amdhsa--gfx90a\256amdhsa.version\222\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\022\003\007\000\000\020\000\000\000\000\000\000\004\002\000\000\000\000\000\000p\000\000\000\021\003\006\000\000\017\000\000\000\000\000\000@\000\000\000\000\000\000\000\227\000\000\000\022\003\007\000\000\025\000\000\000\000\000\000\370\000\000\000\000\000\000\000\025\001\000\000!\003\006\000\201\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000\305\001\000\000!\003\006\000\205\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000L\000\000\000\022\003\007\000\000\023\000\000\000\000\000\000\334\001\000\000\000\000\000\000\276\000\000\000\021\003\006\000@\017\000\000\000\000\000\000@\000\000\000\000\000\000\000%\000\000\000\021\003\006\000\300\016\000\000\000\000\000\000@\000\000\000\000\000\000\000\350\000\000\000!\003\006\000\200\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000A\001\000\000!\003\006\000\202\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000m\001\000\000!\003\006\000\203\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000\230\001\000\000!\003\006\000\204\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000\361\001\000\000!\003\006\000\206\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000\003\000\000\000\001\000\000\000\004\000\000\000\032\000\000\000\000\000\000\000\000\000\000\000\002\000\002\000\020\200\006\020\002\000\013!\000\000\000\001\000D\f\000\b\b\000@\001\000\000\000\006\000\000\000\b\000\000\000\222\354Xc\316\342?N\322\341o\215|[\344\007\235[\344\007\220Nj\343o:\344\306\220\331\022F\312\227QNP\351\343\221\352\271\366\373\352\227QNs\351\343\221\016\000\000\000\016\000\000\000\000\000\000\000\f\000\000\000\002\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\000\000\000\000\n\000\000\000\007\000\000\000\r\000\000\000\003\000\000\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\001\000\000\000\005\000\000\000\006\000\000\000\000_Z23dFindPeak_Step2_SimplerPfPmS0_m\000_Z23dFindPeak_Step2_SimplerPfPmS0_m.kd\000_Z23dFindPeak_Step1_SimplerPKfPfPmm\000_Z23dFindPeak_Step1_SimplerPKfPfPmm.kd\000_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff\000_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff.kd\000_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE\000_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE\000_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE\000_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE\000_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE\000_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE\000_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\000\000\000 \000\000\000\000\000\000\000@\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\301\000\257\000\220\000\000\000\013\000\000\000\000\000\000\000\000\006\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\201\000\257\000\220\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0004\000\000\000\000\000\000\000\300\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\200\000\257\000\220\t\000\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\002\300\004\000\000\000\003\003\016\300\000\000\000\000\202\000\004$\200\002\b~\377\004\002h\000\004\000\000\177\300\214\277\000\377\t\206\377\377\000\000\b\t\000\222\000\004\032\330\002\004\000\000\000\000\004h\004\003\006~\200\000\201\276\203\000\020$\004\003\n~\022\004\330}\000\000\232\330\b\004\000\000j \202\2760\000\210\277\002\000\002\300\f\000\000\000\004\000\217\322\202\004\002\000\r\002\f~\f\b\b2\006\013\n8\006\000\217\322\203\004\002\000\017\002\022~\016\f\f2\177\300\214\277\000\202\204\216\t\017\0168\000\203\206\216\200\001\212\276\200\002\022~\016\000\202\277~\016\376\207\001\002\024~\000\004\0042\003\025\0068\005\002\024~\004\b\b2\005\025\n8\022\004\326}\007\002\024~j\n\212\207\006\f\f2\007\025\0168~\n\376\211\020\000\210\277\000\200P\334\004\000\177\np\017\214\277\024\003D\320\n\023\002\000\024 \216\276\353\377\210\277\000\200T\334\006\000\177\f\n\003\022~\000\000\032\330\001\n\000\000p\017\214\277\000\000\232\330\b\f\000\000\342\377\202\277~\002\376\207\t\202\n\277\031\000\204\277\200\000\211\276\200\000\224}j \200\276\021\000\210\277\b\202\200\216\000\000\354\330\b\000\000\002\000\000l\330\001\000\000\001\f\000\000\200\r\001\001\202\b\203\202\216\020\002\002\200\200\002\000~\021\003\003\202\177\301\214\277\000\200t\334\000\002\002\000\177\300\214\277\000\200p\334\000\001\000\000\000\000\201\277~\000\376\207\002\204\n\277\347\377\205\277\t\000\202\276\t\201\t\217\t\000\230}\177\300\214\277\000\000\212\277\177\300\214\277j \200\276\365\377\210\277\002\000\375\321\t\004\005\004\000\000l\330\002\000\000\002\000\000l\330\001\000\000\003\177\300\214\277\004\003D\320\002\007\002\000~\004\376\206\352\377\210\277\003\000\375\321\t\006!\004\000\000\354\330\003\000\000\004\000\000\032\330\001\002\000\000\177\301\214\277\000\000\232\330\b\004\000\000\340\377\202\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\002\000\002\300\004\000\000\000\003\003\016\300\000\000\000\000\202\000\004$\200\002\b~\377\004\002h\000\004\000\000\177\300\214\277\000\377\t\206\377\377\000\000\b\t\000\222\000\004\032\330\002\004\000\000\000\000\004h\004\003\006~\200\000\201\276\203\000\f$\004\003\n~\022\004\330}\000\000\232\330\006\004\000\000j \202\276$\000\210\277\002\000\002\300\f\000\000\000\004\000\217\322\202\004\002\000\r\002\016~\f\b\b2\007\013\n8\177\300\214\277\000\202\204\216\200\001\206\276\200\002\016~\013\000\202\277~\n\376\207\001\002\020~\000\004\0042\003\021\0068\022\004\326}\005\002\020~j\006\206\207\004\b\b2\005\021\n8~\006\376\211\r\000\210\277\000\200P\334\004\000\177\bp\017\214\277\f\003D\320\b\017\002\000\f \212\276\356\377\210\277\b\003\016~\000\000\032\330\001\b\000\000\000\000\232\330\006\002\000\000\350\377\202\277~\002\376\207\t\202\n\277\177\300\214\277\000\000\212\277\004\000\202\277~\000\376\207\177\300\214\277\000\000\212\277\002\204\n\277\177\300\214\277\032\000\205\277\t\000\202\276\t\201\t\217\t\000\230}j \200\276\365\377\210\277\002\000\375\321\t\004\005\004\000\000l\330\002\000\000\002\000\000l\330\001\000\000\003\177\300\214\277\004\003D\320\002\007\002\000~\004\376\206\352\377\210\277\003\000\375\321\t\006\031\004\000\000\354\330\003\000\000\004\000\000\032\330\001\002\000\000\177\301\214\277\000\000\232\330\006\004\000\000\340\377\202\277\200\000\211\276\200\000\224}j \200\276\021\000\210\277\b\203\200\216\000\000l\330\001\000\000\003\000\000\354\330\006\000\000\000\020\000\000\200\021\001\001\202\b\202\202\216\016\002\002\200\200\002\004~\017\003\003\202\177\301\214\277\000\200p\334\002\003\002\000\177\300\214\277\000\200t\334\002\000\000\000\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\002\000\002\300\004\000\000\000\003\003\016\300\020\000\000\000\377\000\002&\377\003\000\000\000\000\310\321\000\025)\002\177\300\214\277\000\220\001\217\000\377\000\206\377\377\000\000\b\000\000\222\000\r\000\201\000\002\002h\t\001\000\222\000\016\000\201\000\000\000h\017\002\214}\000\000\306\320\020\000\002\000j\000\200\206\000 \202\276%\000\210\277\003\000\n\300\000\000\000\000\022\000\004l\002\000\205\322\002\031\000\000\021\002\006l\003\005\004h\237\004\006\"\000\000\205\322\000\031\000\000\002\000\217\322\202\004\002\000\000\003\000h\177\300\214\277\001\002\b~\000\004\0042\237\000\002\"\004\007\0068\000\000\217\322\202\000\002\000\000\200P\334\002\000\177\002\003\002\006~\002\000\0002\003\003\0028\000\200P\334\000\000\177\003\003\000\002\3000\000\000\000\177\300\214\277\000\002\b~\023\b\b\np\017\214\277\002\000\313\321\004\005\016$\000\200p\334\000\002\177\000\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\000\000\000\0000\n\000\000\000\000\000\000\013\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000h\f\000\000\000\000\000\000\n\000\000\000\000\000\000\000\035\002\000\000\000\000\000\000\365\376\377o\000\000\000\000\200\013\000\000\000\000\000\000\004\000\000\000\000\000\000\000\360\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000AMD clang version 14.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.2.3 22324 d6c88e5a78066d5d7a1e8db6c5e3e9884c6ad10e)\000Linker: AMD LLD 14.0.0\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\035\002\000\000\000\002\b\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\022\003\007\000\000\020\000\000\000\000\000\000\004\002\000\000\000\000\000\000%\000\000\000\021\003\006\000\300\016\000\000\000\000\000\000@\000\000\000\000\000\000\000L\000\000\000\022\003\007\000\000\023\000\000\000\000\000\000\334\001\000\000\000\000\000\000p\000\000\000\021\003\006\000\000\017\000\000\000\000\000\000@\000\000\000\000\000\000\000\227\000\000\000\022\003\007\000\000\025\000\000\000\000\000\000\370\000\000\000\000\000\000\000\276\000\000\000\021\003\006\000@\017\000\000\000\000\000\000@\000\000\000\000\000\000\000\350\000\000\000!\003\006\000\200\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000\025\001\000\000!\003\006\000\201\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000A\001\000\000!\003\006\000\202\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000m\001\000\000!\003\006\000\203\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000\230\001\000\000!\003\006\000\204\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000\305\001\000\000!\003\006\000\205\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000\361\001\000\000!\003\006\000\206\017\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000.note\000.dynsym\000.gnu.hash\000.hash\000.dynstr\000.rodata\000.text\000.dynamic\000.AMDGPU.csdata\000.comment\000.symtab\000.shstrtab\000.strtab\000\000_Z23dFindPeak_Step2_SimplerPfPmS0_m\000_Z23dFindPeak_Step2_SimplerPfPmS0_m.kd\000_Z23dFindPeak_Step1_SimplerPKfPfPmm\000_Z23dFindPeak_Step1_SimplerPKfPfPmm.kd\000_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff\000_Z20dSubtractPSF_SimplerPKfPfiiiiiiiff.kd\000_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE\000_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE\000_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE\000_ZN17__HIP_CoordinatesI13__HIP_GridDimE1xE\000_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE\000_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE\000_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1yE\000_DYNAMIC\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\007\000\000\000\002\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\002\000\000\000\000\000\0000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\000\000\013\000\000\000\002\000\000\000\000\000\000\0000\n\000\000\000\000\000\0000\n\000\000\000\000\000\000P\001\000\000\000\000\000\000\005\000\000\000\001\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\017\000\000\000\366\377\377o\002\000\000\000\000\000\000\000\200\013\000\000\000\000\000\000\200\013\000\000\000\000\000\000p\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\000\000\000\005\000\000\000\002\000\000\000\000\000\000\000\360\013\000\000\000\000\000\000\360\013\000\000\000\000\000\000x\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\037\000\000\000\003\000\000\000\002\000\000\000\000\000\000\000h\f\000\000\000\000\000\000h\f\000\000\000\000\000\000\035\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000'\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\300\016\000\000\000\000\000\000\300\016\000\000\000\000\000\000\307\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000/\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\000\000\000\006\000\000\000\003\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000p\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000>\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000p \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000M\000\000\000\001\000\000\0000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000p \000\000\000\000\000\000\236\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000V\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020!\000\000\000\000\000\000h\001\000\000\000\000\000\000\r\000\000\000\002\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000^\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000x\"\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000h\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\350\"\000\000\000\000\000\000&\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	.L__unnamed_4, 14481

	.type	__hip_fatbin_wrapper,@object    # @__hip_fatbin_wrapper
	.section	.hipFatBinSegment,"a",@progbits
	.p2align	3
__hip_fatbin_wrapper:
	.long	1212764230                      # 0x48495046
	.long	1                               # 0x1
	.quad	.L__unnamed_4
	.quad	0
	.size	__hip_fatbin_wrapper, 24

	.type	__hip_gpubin_handle,@object     # @__hip_gpubin_handle
	.local	__hip_gpubin_handle
	.comm	__hip_gpubin_handle,8,8
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_GpuSimpler.hip
	.quad	__hip_module_ctor
	.globl	_ZN10GpuSimplerD1Ev
	.type	_ZN10GpuSimplerD1Ev,@function
.set _ZN10GpuSimplerD1Ev, _ZN10GpuSimplerD2Ev
	.ident	"AMD clang version 14.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.2.3 22324 d6c88e5a78066d5d7a1e8db6c5e3e9884c6ad10e)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z38__device_stub__dFindPeak_Step2_SimplerPfPmS0_m
	.addrsig_sym _Z38__device_stub__dFindPeak_Step1_SimplerPKfPfPmm
	.addrsig_sym _Z35__device_stub__dSubtractPSF_SimplerPKfPfiiiiiiiff
	.addrsig_sym vsnprintf
	.addrsig_sym _GLOBAL__sub_I_GpuSimpler.hip
	.addrsig_sym __hip_module_ctor
	.addrsig_sym __hip_module_dtor
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZL10gDirtyFileB5cxx11
	.addrsig_sym _ZL8gPsfFileB5cxx11
	.addrsig_sym _ZL13refSolverNameB5cxx11
	.addrsig_sym _ZL14testSolverNameB5cxx11
	.addrsig_sym _Z23dFindPeak_Step2_SimplerPfPmS0_m
	.addrsig_sym _Z23dFindPeak_Step1_SimplerPKfPfPmm
	.addrsig_sym _Z20dSubtractPSF_SimplerPKfPfiiiiiiiff
	.addrsig_sym _ZSt4cerr
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS10GpuSimpler
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS7IHogbom
	.addrsig_sym _ZTI7IHogbom
	.addrsig_sym _ZTI10GpuSimpler
	.addrsig_sym .L__unnamed_4
	.addrsig_sym __hip_fatbin_wrapper

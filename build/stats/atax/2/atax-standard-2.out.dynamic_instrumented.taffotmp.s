	.text
	.file	"atax.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function sqrtf_PB
.LCPI0_0:
	.long	0x40000000                      # float 2
.LCPI0_1:
	.long	0x3a83126f                      # float 0.00100000005
.LCPI0_2:
	.long	0x41200000                      # float 10
	.text
	.globl	sqrtf_PB
	.p2align	4, 0x90
	.type	sqrtf_PB,@function
sqrtf_PB:                               # @sqrtf_PB
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_1(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_4(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-48(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -8(%rbp)
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movl	$0, -28(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -40(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_6(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_7(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-44(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_2
	jp	.LBB0_2
# %bb.1:                                # %if.then
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -8(%rbp)
	jmp	.LBB0_14
.LBB0_2:                                # %if.else
	movl	$1, -24(%rbp)
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$20, -24(%rbp)
	jge	.LBB0_13
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB0_11
# %bb.5:                                # %if.then2
                                        #   in Loop: Header=BB0_3 Depth=1
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -120(%rbp)               # 4-byte Spill
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -128(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_8(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -124(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_9(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-128(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-124(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -116(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_10(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-120(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-116(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_12(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -112(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_14(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -108(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_15(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-112(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-108(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_16(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-104(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-100(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_17(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-96(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_18(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_19(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-92(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-88(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_20(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-84(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -8(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_22(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_23(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_24(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-80(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-76(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_25(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-72(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-68(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_26(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-64(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_27(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_28(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-60(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB0_7
# %bb.6:                                # %cond.true
                                        #   in Loop: Header=BB0_3 Depth=1
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -132(%rbp)               # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                # %cond.false
                                        #   in Loop: Header=BB0_3 Depth=1
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, -136(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_29(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_30(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-136(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -132(%rbp)               # 4-byte Spill
.LBB0_8:                                # %cond.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movss	-132(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -144(%rbp)               # 4-byte Spill
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -140(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_31(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-144(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-140(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB0_10
# %bb.9:                                # %if.then9
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, -28(%rbp)
.LBB0_10:                               # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               # %if.end10
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_13:                               # %for.end
	jmp	.LBB0_14
.LBB0_14:                               # %if.end11
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	sqrtf_PB, .Lfunc_end0-sqrtf_PB
	.cfi_endproc
                                        # -- End function
	.globl	scale_scalar                    # -- Begin function scale_scalar
	.p2align	4, 0x90
	.type	scale_scalar,@function
scale_scalar:                           # @scale_scalar
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	scale_scalar, .Lfunc_end1-scale_scalar
	.cfi_endproc
                                        # -- End function
	.globl	scale_1d                        # -- Begin function scale_1d
	.p2align	4, 0x90
	.type	scale_1d,@function
scale_1d:                               # @scale_1d
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB2_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_32(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_33(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-36(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_35(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-28(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	scale_1d, .Lfunc_end2-scale_1d
	.cfi_endproc
                                        # -- End function
	.globl	scale_2d                        # -- Begin function scale_2d
	.p2align	4, 0x90
	.type	scale_2d,@function
scale_2d:                               # @scale_2d
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-8(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	$0, -24(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB3_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$0, -28(%rbp)
.LBB3_3:                                # %for.cond1
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB3_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	%rdx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_36(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_37(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_38(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movss	-44(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	%rdx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc10
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_1
.LBB3_8:                                # %for.end12
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	scale_2d, .Lfunc_end3-scale_2d
	.cfi_endproc
                                        # -- End function
	.globl	scale_3d                        # -- Begin function scale_3d
	.p2align	4, 0x90
	.type	scale_3d,@function
scale_3d:                               # @scale_3d
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-8(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	$0, -32(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #       Child Loop BB4_5 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -36(%rbp)
.LBB4_3:                                # %for.cond1
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB4_10
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	$0, -40(%rbp)
.LBB4_5:                                # %for.cond4
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB4_8
# %bb.6:                                # %for.body6
                                        #   in Loop: Header=BB4_5 Depth=3
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	%rdx, %rsi
	imulq	%rsi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	%rdx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_39(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	cvtsi2ssl	-28(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_40(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-68(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_41(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movss	-60(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	%rdx, %rsi
	imulq	%rsi, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	%rdx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_5
.LBB4_8:                                # %for.end
                                        #   in Loop: Header=BB4_3 Depth=2
	jmp	.LBB4_9
.LBB4_9:                                # %for.inc17
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_3
.LBB4_10:                               # %for.end19
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc20
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_1
.LBB4_12:                               # %for.end22
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	scale_3d, .Lfunc_end4-scale_3d
	.cfi_endproc
                                        # -- End function
	.globl	timer_start                     # -- Begin function timer_start
	.p2align	4, 0x90
	.type	timer_start,@function
timer_start:                            # @timer_start
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	PrintfTimerStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_42(%rip), %rsi
	movb	$0, %al
	callq	printf@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	timer_start, .Lfunc_end5-timer_start
	.cfi_endproc
                                        # -- End function
	.globl	timer_stop                      # -- Begin function timer_stop
	.p2align	4, 0x90
	.type	timer_stop,@function
timer_stop:                             # @timer_stop
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	PrintfTimerStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_43(%rip), %rsi
	movb	$0, %al
	callq	printf@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	timer_stop, .Lfunc_end6-timer_stop
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2080, %rsp                     # imm = 0x820
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$20, -20(%rbp)
	movl	$22, -24(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	leaq	-1792(%rbp), %rdx
	leaq	-1888(%rbp), %rcx
	leaq	-1984(%rbp), %r8
	leaq	-2064(%rbp), %r9
	callq	init_array.5
	leaq	-1792(%rbp), %rdx
	movl	$20, %edi
	movl	$22, %esi
	movl	$2, %ecx
	callq	scale_2d.4
	leaq	-1888(%rbp), %rsi
	movl	$22, %edi
	movl	$2, %edx
	callq	scale_1d.3
	leaq	-1984(%rbp), %rsi
	movl	$22, %edi
	movl	$2, %edx
	callq	scale_1d.2
	leaq	-2064(%rbp), %rsi
	movl	$20, %edi
	movl	$2, %edx
	callq	scale_1d.1
	callq	timer_start
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	leaq	-1792(%rbp), %rdx
	leaq	-1888(%rbp), %rcx
	leaq	-1984(%rbp), %r8
	leaq	-2064(%rbp), %r9
	callq	kernel_atax.6
	callq	timer_stop
	movl	$0, -2068(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$22, -2068(%rbp)
	jge	.LBB7_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-2068(%rbp), %rax
	movss	-1984(%rbp,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -2072(%rbp)              # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_44(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-2072(%rbp), %xmm0              # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movslq	-2068(%rbp), %rcx
	leaq	y_float(%rip), %rax
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-2068(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2068(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	xorl	%eax, %eax
	addq	$2080, %rsp                     # imm = 0x820
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function init_array
.LCPI8_0:
	.long	0x3f800000                      # float 1
	.text
	.p2align	4, 0x90
	.type	init_array,@function
init_array:                             # @init_array
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	cvtsi2ssl	-8(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_45(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movl	$0, -44(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB8_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	cvtsi2ssl	-44(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_46(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_47(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-72(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-68(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_48(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-64(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI8_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_49(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-60(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	movl	$0, -44(%rbp)
.LBB8_5:                                # %for.cond8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB8_12
# %bb.6:                                # %for.body11
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -48(%rbp)
.LBB8_7:                                # %for.cond14
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB8_10
# %bb.8:                                # %for.body17
                                        #   in Loop: Header=BB8_7 Depth=2
	movl	-44(%rbp), %eax
	addl	-48(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_50(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	imull	$5, -4(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_51(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-84(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-80(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_52(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-76(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                # %for.inc26
                                        #   in Loop: Header=BB8_7 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB8_7
.LBB8_10:                               # %for.end28
                                        #   in Loop: Header=BB8_5 Depth=1
	jmp	.LBB8_11
.LBB8_11:                               # %for.inc29
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB8_5
.LBB8_12:                               # %for.end31
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	init_array, .Lfunc_end8-init_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_atax
	.type	kernel_atax,@function
kernel_atax:                            # @kernel_atax
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB9_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movl	$0, -44(%rbp)
.LBB9_5:                                # %for.cond1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #     Child Loop BB9_11 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB9_16
# %bb.6:                                # %for.body3
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -48(%rbp)
.LBB9_7:                                # %for.cond6
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB9_10
# %bb.8:                                # %for.body8
                                        #   in Loop: Header=BB9_7 Depth=2
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_53(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_54(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_55(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-68(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_56(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-60(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_57(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                # %for.inc19
                                        #   in Loop: Header=BB9_7 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB9_7
.LBB9_10:                               # %for.end21
                                        #   in Loop: Header=BB9_5 Depth=1
	movl	$0, -48(%rbp)
.LBB9_11:                               # %for.cond22
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB9_14
# %bb.12:                               # %for.body24
                                        #   in Loop: Header=BB9_11 Depth=2
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_58(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_59(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_60(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-88(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-84(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_61(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-80(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-76(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_62(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-72(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.13:                               # %for.inc37
                                        #   in Loop: Header=BB9_11 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB9_11
.LBB9_14:                               # %for.end39
                                        #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_15
.LBB9_15:                               # %for.inc40
                                        #   in Loop: Header=BB9_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB9_5
.LBB9_16:                               # %for.end42
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	kernel_atax, .Lfunc_end9-kernel_atax
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_1d.1
	.type	scale_1d.1,@function
scale_1d.1:                             # @scale_1d.1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB10_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_63(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_64(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-36(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_65(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-28(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	scale_1d.1, .Lfunc_end10-scale_1d.1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_1d.2
	.type	scale_1d.2,@function
scale_1d.2:                             # @scale_1d.2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB11_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_66(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_67(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-36(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_68(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-28(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	scale_1d.2, .Lfunc_end11-scale_1d.2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_1d.3
	.type	scale_1d.3,@function
scale_1d.3:                             # @scale_1d.3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB12_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_69(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_70(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-36(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_71(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-28(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	scale_1d.3, .Lfunc_end12-scale_1d.3
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_2d.4
	.type	scale_2d.4,@function
scale_2d.4:                             # @scale_2d.4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-8(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	$0, -24(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB13_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$0, -28(%rbp)
.LBB13_3:                               # %for.cond1
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB13_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB13_3 Depth=2
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	%rdx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_72(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_73(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_74(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-40(%rbp), %rdx                 # 8-byte Reload
	movss	-44(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	%rdx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_3
.LBB13_6:                               # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_7
.LBB13_7:                               # %for.inc10
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB13_1
.LBB13_8:                               # %for.end12
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	scale_2d.4, .Lfunc_end13-scale_2d.4
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function init_array.5
.LCPI14_0:
	.long	0x3f800000                      # float 1
	.text
	.p2align	4, 0x90
	.type	init_array.5,@function
init_array.5:                           # @init_array.5
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	cvtsi2ssl	-8(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_75(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movl	$0, -44(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB14_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	cvtsi2ssl	-44(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_76(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_77(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-72(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-68(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_78(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-64(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI14_0(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_79(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-60(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_1
.LBB14_4:                               # %for.end
	movl	$0, -44(%rbp)
.LBB14_5:                               # %for.cond8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_7 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB14_12
# %bb.6:                                # %for.body11
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -48(%rbp)
.LBB14_7:                               # %for.cond14
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB14_10
# %bb.8:                                # %for.body17
                                        #   in Loop: Header=BB14_7 Depth=2
	movl	-44(%rbp), %eax
	addl	-48(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_80(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	imull	$5, -4(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_81(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_34(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-84(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-80(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_82(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-76(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                # %for.inc26
                                        #   in Loop: Header=BB14_7 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB14_7
.LBB14_10:                              # %for.end28
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_11
.LBB14_11:                              # %for.inc29
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_5
.LBB14_12:                              # %for.end31
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	init_array.5, .Lfunc_end14-init_array.5
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_atax.6
	.type	kernel_atax.6,@function
kernel_atax.6:                          # @kernel_atax.6
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB15_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_1
.LBB15_4:                               # %for.end
	movl	$0, -44(%rbp)
.LBB15_5:                               # %for.cond1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_7 Depth 2
                                        #     Child Loop BB15_11 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB15_16
# %bb.6:                                # %for.body3
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -48(%rbp)
.LBB15_7:                               # %for.cond6
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB15_10
# %bb.8:                                # %for.body8
                                        #   in Loop: Header=BB15_7 Depth=2
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_83(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_84(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_85(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-68(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_86(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-60(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_87(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                # %for.inc19
                                        #   in Loop: Header=BB15_7 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB15_7
.LBB15_10:                              # %for.end21
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	$0, -48(%rbp)
.LBB15_11:                              # %for.cond22
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB15_14
# %bb.12:                               # %for.body24
                                        #   in Loop: Header=BB15_11 Depth=2
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_88(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_89(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_90(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-88(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-84(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_91(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-80(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-76(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_92(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-72(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.13:                               # %for.inc37
                                        #   in Loop: Header=BB15_11 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB15_11
.LBB15_14:                              # %for.end39
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_15
.LBB15_15:                              # %for.inc40
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_5
.LBB15_16:                              # %for.end42
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	kernel_atax.6, .Lfunc_end15-kernel_atax.6
	.cfi_endproc
                                        # -- End function
	.type	y_float,@object                 # @y_float
	.bss
	.globl	y_float
	.p2align	4
y_float:
	.zero	88
	.size	y_float, 88

	.type	PrintfFormatStr,@object         # @PrintfFormatStr
	.data
	.globl	PrintfFormatStr
	.p2align	4
PrintfFormatStr:
	.asciz	"\nTAFFO_TRACE %s %A %s %s\n"
	.size	PrintfFormatStr, 26

	.type	PrintfTimerStr,@object          # @PrintfTimerStr
	.globl	PrintfTimerStr
	.p2align	4
PrintfTimerStr:
	.asciz	"\nTRACE_TIMER %s\n"
	.size	PrintfTimerStr, 17

	.type	.L__unnamed_93,@object          # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_93:
	.asciz	"Float_half"
	.size	.L__unnamed_93, 11

	.type	.L__unnamed_94,@object          # @1
.L__unnamed_94:
	.asciz	"Float_bfloat"
	.size	.L__unnamed_94, 13

	.type	.L__unnamed_2,@object           # @2
.L__unnamed_2:
	.asciz	"Float_float"
	.size	.L__unnamed_2, 12

	.type	.L__unnamed_95,@object          # @3
.L__unnamed_95:
	.asciz	"Float_double"
	.size	.L__unnamed_95, 13

	.type	.L__unnamed_96,@object          # @4
.L__unnamed_96:
	.asciz	"Float_x86_fp80"
	.size	.L__unnamed_96, 15

	.type	.L__unnamed_97,@object          # @5
.L__unnamed_97:
	.asciz	"Float_fp128"
	.size	.L__unnamed_97, 12

	.type	.L__unnamed_98,@object          # @6
.L__unnamed_98:
	.asciz	"Float_ppc_fp128"
	.size	.L__unnamed_98, 16

	.type	.L__unnamed_1,@object           # @7
.L__unnamed_1:
	.asciz	"a::var0"
	.size	.L__unnamed_1, 8

	.type	.L__unnamed_3,@object           # @8
.L__unnamed_3:
	.asciz	"load"
	.size	.L__unnamed_3, 5

	.type	.L__unnamed_4,@object           # @9
.L__unnamed_4:
	.asciz	"a::var1"
	.size	.L__unnamed_4, 8

	.type	.L__unnamed_5,@object           # @10
.L__unnamed_5:
	.asciz	"fdiv"
	.size	.L__unnamed_5, 5

	.type	.L__unnamed_6,@object           # @11
.L__unnamed_6:
	.asciz	"a::var2"
	.size	.L__unnamed_6, 8

	.type	.L__unnamed_7,@object           # @12
.L__unnamed_7:
	.asciz	"a::var3"
	.size	.L__unnamed_7, 8

	.type	.L__unnamed_8,@object           # @13
.L__unnamed_8:
	.asciz	"a::var4"
	.size	.L__unnamed_8, 8

	.type	.L__unnamed_9,@object           # @14
.L__unnamed_9:
	.asciz	"a::var5"
	.size	.L__unnamed_9, 8

	.type	.L__unnamed_10,@object          # @15
.L__unnamed_10:
	.asciz	"a::var6"
	.size	.L__unnamed_10, 8

	.type	.L__unnamed_11,@object          # @16
.L__unnamed_11:
	.asciz	"fmul"
	.size	.L__unnamed_11, 5

	.type	.L__unnamed_12,@object          # @17
.L__unnamed_12:
	.asciz	"a::var7"
	.size	.L__unnamed_12, 8

	.type	.L__unnamed_13,@object          # @18
.L__unnamed_13:
	.asciz	"fsub"
	.size	.L__unnamed_13, 5

	.type	.L__unnamed_14,@object          # @19
.L__unnamed_14:
	.asciz	"a::var8"
	.size	.L__unnamed_14, 8

	.type	.L__unnamed_15,@object          # @20
.L__unnamed_15:
	.asciz	"a::var9"
	.size	.L__unnamed_15, 8

	.type	.L__unnamed_16,@object          # @21
.L__unnamed_16:
	.asciz	"a::var10"
	.size	.L__unnamed_16, 9

	.type	.L__unnamed_17,@object          # @22
.L__unnamed_17:
	.asciz	"a::var11"
	.size	.L__unnamed_17, 9

	.type	.L__unnamed_18,@object          # @23
.L__unnamed_18:
	.asciz	"a::var12"
	.size	.L__unnamed_18, 9

	.type	.L__unnamed_19,@object          # @24
.L__unnamed_19:
	.asciz	"a::var13"
	.size	.L__unnamed_19, 9

	.type	.L__unnamed_20,@object          # @25
.L__unnamed_20:
	.asciz	"a::var14"
	.size	.L__unnamed_20, 9

	.type	.L__unnamed_21,@object          # @26
.L__unnamed_21:
	.asciz	"fadd"
	.size	.L__unnamed_21, 5

	.type	.L__unnamed_22,@object          # @27
.L__unnamed_22:
	.asciz	"a::var15"
	.size	.L__unnamed_22, 9

	.type	.L__unnamed_23,@object          # @28
.L__unnamed_23:
	.asciz	"a::var16"
	.size	.L__unnamed_23, 9

	.type	.L__unnamed_24,@object          # @29
.L__unnamed_24:
	.asciz	"a::var17"
	.size	.L__unnamed_24, 9

	.type	.L__unnamed_25,@object          # @30
.L__unnamed_25:
	.asciz	"a::var18"
	.size	.L__unnamed_25, 9

	.type	.L__unnamed_26,@object          # @31
.L__unnamed_26:
	.asciz	"a::var19"
	.size	.L__unnamed_26, 9

	.type	.L__unnamed_27,@object          # @32
.L__unnamed_27:
	.asciz	"a::var20"
	.size	.L__unnamed_27, 9

	.type	.L__unnamed_28,@object          # @33
.L__unnamed_28:
	.asciz	"a::var21"
	.size	.L__unnamed_28, 9

	.type	.L__unnamed_29,@object          # @34
.L__unnamed_29:
	.asciz	"a::var22"
	.size	.L__unnamed_29, 9

	.type	.L__unnamed_30,@object          # @35
.L__unnamed_30:
	.asciz	"fneg"
	.size	.L__unnamed_30, 5

	.type	.L__unnamed_31,@object          # @36
.L__unnamed_31:
	.asciz	"a::var23"
	.size	.L__unnamed_31, 9

	.type	.L__unnamed_32,@object          # @37
.L__unnamed_32:
	.asciz	"a::var24"
	.size	.L__unnamed_32, 9

	.type	.L__unnamed_33,@object          # @38
.L__unnamed_33:
	.asciz	"a::var25"
	.size	.L__unnamed_33, 9

	.type	.L__unnamed_34,@object          # @39
.L__unnamed_34:
	.asciz	"sitofp"
	.size	.L__unnamed_34, 7

	.type	.L__unnamed_35,@object          # @40
.L__unnamed_35:
	.asciz	"a::var26"
	.size	.L__unnamed_35, 9

	.type	.L__unnamed_36,@object          # @41
.L__unnamed_36:
	.asciz	"a::var27"
	.size	.L__unnamed_36, 9

	.type	.L__unnamed_37,@object          # @42
.L__unnamed_37:
	.asciz	"a::var28"
	.size	.L__unnamed_37, 9

	.type	.L__unnamed_38,@object          # @43
.L__unnamed_38:
	.asciz	"a::var29"
	.size	.L__unnamed_38, 9

	.type	.L__unnamed_39,@object          # @44
.L__unnamed_39:
	.asciz	"a::var30"
	.size	.L__unnamed_39, 9

	.type	.L__unnamed_40,@object          # @45
.L__unnamed_40:
	.asciz	"a::var31"
	.size	.L__unnamed_40, 9

	.type	.L__unnamed_41,@object          # @46
.L__unnamed_41:
	.asciz	"a::var32"
	.size	.L__unnamed_41, 9

	.type	.L__unnamed_42,@object          # @47
.L__unnamed_42:
	.asciz	"timer_start"
	.size	.L__unnamed_42, 12

	.type	.L__unnamed_43,@object          # @48
.L__unnamed_43:
	.asciz	"timer_stop"
	.size	.L__unnamed_43, 11

	.type	.L__unnamed_44,@object          # @49
.L__unnamed_44:
	.asciz	"a::var33"
	.size	.L__unnamed_44, 9

	.type	.L__unnamed_45,@object          # @50
.L__unnamed_45:
	.asciz	"a::var34"
	.size	.L__unnamed_45, 9

	.type	.L__unnamed_46,@object          # @51
.L__unnamed_46:
	.asciz	"a::var35"
	.size	.L__unnamed_46, 9

	.type	.L__unnamed_47,@object          # @52
.L__unnamed_47:
	.asciz	"a::var36"
	.size	.L__unnamed_47, 9

	.type	.L__unnamed_48,@object          # @53
.L__unnamed_48:
	.asciz	"a::var37"
	.size	.L__unnamed_48, 9

	.type	.L__unnamed_49,@object          # @54
.L__unnamed_49:
	.asciz	"a::var38"
	.size	.L__unnamed_49, 9

	.type	.L__unnamed_50,@object          # @55
.L__unnamed_50:
	.asciz	"a::var39"
	.size	.L__unnamed_50, 9

	.type	.L__unnamed_51,@object          # @56
.L__unnamed_51:
	.asciz	"a::var40"
	.size	.L__unnamed_51, 9

	.type	.L__unnamed_52,@object          # @57
.L__unnamed_52:
	.asciz	"a::var41"
	.size	.L__unnamed_52, 9

	.type	.L__unnamed_53,@object          # @58
.L__unnamed_53:
	.asciz	"a::var42"
	.size	.L__unnamed_53, 9

	.type	.L__unnamed_54,@object          # @59
.L__unnamed_54:
	.asciz	"a::var43"
	.size	.L__unnamed_54, 9

	.type	.L__unnamed_55,@object          # @60
.L__unnamed_55:
	.asciz	"a::var44"
	.size	.L__unnamed_55, 9

	.type	.L__unnamed_56,@object          # @61
.L__unnamed_56:
	.asciz	"a::var45"
	.size	.L__unnamed_56, 9

	.type	.L__unnamed_57,@object          # @62
.L__unnamed_57:
	.asciz	"a::var46"
	.size	.L__unnamed_57, 9

	.type	.L__unnamed_58,@object          # @63
.L__unnamed_58:
	.asciz	"a::var47"
	.size	.L__unnamed_58, 9

	.type	.L__unnamed_59,@object          # @64
.L__unnamed_59:
	.asciz	"a::var48"
	.size	.L__unnamed_59, 9

	.type	.L__unnamed_60,@object          # @65
.L__unnamed_60:
	.asciz	"a::var49"
	.size	.L__unnamed_60, 9

	.type	.L__unnamed_61,@object          # @66
.L__unnamed_61:
	.asciz	"a::var50"
	.size	.L__unnamed_61, 9

	.type	.L__unnamed_62,@object          # @67
.L__unnamed_62:
	.asciz	"a::var51"
	.size	.L__unnamed_62, 9

	.type	.L__unnamed_63,@object          # @68
.L__unnamed_63:
	.asciz	"a::var52"
	.size	.L__unnamed_63, 9

	.type	.L__unnamed_64,@object          # @69
.L__unnamed_64:
	.asciz	"a::var53"
	.size	.L__unnamed_64, 9

	.type	.L__unnamed_65,@object          # @70
.L__unnamed_65:
	.asciz	"a::var54"
	.size	.L__unnamed_65, 9

	.type	.L__unnamed_66,@object          # @71
.L__unnamed_66:
	.asciz	"a::var55"
	.size	.L__unnamed_66, 9

	.type	.L__unnamed_67,@object          # @72
.L__unnamed_67:
	.asciz	"a::var56"
	.size	.L__unnamed_67, 9

	.type	.L__unnamed_68,@object          # @73
.L__unnamed_68:
	.asciz	"a::var57"
	.size	.L__unnamed_68, 9

	.type	.L__unnamed_69,@object          # @74
.L__unnamed_69:
	.asciz	"a::var58"
	.size	.L__unnamed_69, 9

	.type	.L__unnamed_70,@object          # @75
.L__unnamed_70:
	.asciz	"a::var59"
	.size	.L__unnamed_70, 9

	.type	.L__unnamed_71,@object          # @76
.L__unnamed_71:
	.asciz	"a::var60"
	.size	.L__unnamed_71, 9

	.type	.L__unnamed_72,@object          # @77
.L__unnamed_72:
	.asciz	"a::var61"
	.size	.L__unnamed_72, 9

	.type	.L__unnamed_73,@object          # @78
.L__unnamed_73:
	.asciz	"a::var62"
	.size	.L__unnamed_73, 9

	.type	.L__unnamed_74,@object          # @79
.L__unnamed_74:
	.asciz	"a::var63"
	.size	.L__unnamed_74, 9

	.type	.L__unnamed_75,@object          # @80
.L__unnamed_75:
	.asciz	"a::var64"
	.size	.L__unnamed_75, 9

	.type	.L__unnamed_76,@object          # @81
.L__unnamed_76:
	.asciz	"a::var65"
	.size	.L__unnamed_76, 9

	.type	.L__unnamed_77,@object          # @82
.L__unnamed_77:
	.asciz	"a::var66"
	.size	.L__unnamed_77, 9

	.type	.L__unnamed_78,@object          # @83
.L__unnamed_78:
	.asciz	"a::var67"
	.size	.L__unnamed_78, 9

	.type	.L__unnamed_79,@object          # @84
.L__unnamed_79:
	.asciz	"a::var68"
	.size	.L__unnamed_79, 9

	.type	.L__unnamed_80,@object          # @85
.L__unnamed_80:
	.asciz	"a::var69"
	.size	.L__unnamed_80, 9

	.type	.L__unnamed_81,@object          # @86
.L__unnamed_81:
	.asciz	"a::var70"
	.size	.L__unnamed_81, 9

	.type	.L__unnamed_82,@object          # @87
.L__unnamed_82:
	.asciz	"a::var71"
	.size	.L__unnamed_82, 9

	.type	.L__unnamed_83,@object          # @88
.L__unnamed_83:
	.asciz	"a::var72"
	.size	.L__unnamed_83, 9

	.type	.L__unnamed_84,@object          # @89
.L__unnamed_84:
	.asciz	"a::var73"
	.size	.L__unnamed_84, 9

	.type	.L__unnamed_85,@object          # @90
.L__unnamed_85:
	.asciz	"a::var74"
	.size	.L__unnamed_85, 9

	.type	.L__unnamed_86,@object          # @91
.L__unnamed_86:
	.asciz	"a::var75"
	.size	.L__unnamed_86, 9

	.type	.L__unnamed_87,@object          # @92
.L__unnamed_87:
	.asciz	"a::var76"
	.size	.L__unnamed_87, 9

	.type	.L__unnamed_88,@object          # @93
.L__unnamed_88:
	.asciz	"a::var77"
	.size	.L__unnamed_88, 9

	.type	.L__unnamed_89,@object          # @94
.L__unnamed_89:
	.asciz	"a::var78"
	.size	.L__unnamed_89, 9

	.type	.L__unnamed_90,@object          # @95
.L__unnamed_90:
	.asciz	"a::var79"
	.size	.L__unnamed_90, 9

	.type	.L__unnamed_91,@object          # @96
.L__unnamed_91:
	.asciz	"a::var80"
	.size	.L__unnamed_91, 9

	.type	.L__unnamed_92,@object          # @97
.L__unnamed_92:
	.asciz	"a::var81"
	.size	.L__unnamed_92, 9

	.ident	"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym scale_1d.1
	.addrsig_sym scale_1d.2
	.addrsig_sym scale_1d.3
	.addrsig_sym scale_2d.4
	.addrsig_sym init_array.5
	.addrsig_sym kernel_atax.6
	.addrsig_sym printf
	.addrsig_sym y_float
	.addrsig_sym PrintfFormatStr
	.addrsig_sym PrintfTimerStr

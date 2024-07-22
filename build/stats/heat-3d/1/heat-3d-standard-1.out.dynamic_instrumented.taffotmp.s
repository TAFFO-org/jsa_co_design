	.text
	.file	"heat-3d.c"
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
	leaq	.L__unnamed_32(%rip), %rsi
	movb	$0, %al
	callq	printf@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	timer_start, .Lfunc_end1-timer_start
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
	leaq	.L__unnamed_33(%rip), %rsi
	movb	$0, %al
	callq	printf@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	timer_stop, .Lfunc_end2-timer_stop
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
	subq	$1056, %rsp                     # imm = 0x420
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$5, -20(%rbp)
	movl	$10, -24(%rbp)
	movl	-20(%rbp), %edi
	leaq	-528(%rbp), %rsi
	leaq	-1040(%rbp), %rdx
	callq	init_array.1
	callq	timer_start
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	leaq	-528(%rbp), %rdx
	leaq	-1040(%rbp), %rcx
	callq	kernel_heat_3d.2
	callq	timer_stop
	movl	$0, -1044(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #       Child Loop BB3_5 Depth 3
	movl	-1044(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$0, -1048(%rbp)
.LBB3_3:                                # %for.cond6
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_5 Depth 3
	movl	-1048(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_10
# %bb.4:                                # %for.body8
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	$0, -1052(%rbp)
.LBB3_5:                                # %for.cond9
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1052(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_8
# %bb.6:                                # %for.body11
                                        #   in Loop: Header=BB3_5 Depth=3
	movslq	-1044(%rbp), %rcx
	leaq	-528(%rbp), %rax
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-1048(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-1052(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -1056(%rbp)              # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_34(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-1056(%rbp), %xmm0              # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movslq	-1044(%rbp), %rcx
	leaq	A_float(%rip), %rax
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-1048(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-1052(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=3
	movl	-1052(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1052(%rbp)
	jmp	.LBB3_5
.LBB3_8:                                # %for.end
                                        #   in Loop: Header=BB3_3 Depth=2
	jmp	.LBB3_9
.LBB3_9:                                # %for.inc22
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-1048(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1048(%rbp)
	jmp	.LBB3_3
.LBB3_10:                               # %for.end24
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_11
.LBB3_11:                               # %for.inc25
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-1044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1044(%rbp)
	jmp	.LBB3_1
.LBB3_12:                               # %for.end27
	xorl	%eax, %eax
	addq	$1056, %rsp                     # imm = 0x420
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function init_array
.LCPI4_0:
	.long	0x41200000                      # float 10
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #       Child Loop BB4_5 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -32(%rbp)
.LBB4_3:                                # %for.cond4
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_5 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_10
# %bb.4:                                # %for.body6
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	$0, -36(%rbp)
.LBB4_5:                                # %for.cond7
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_8
# %bb.6:                                # %for.body9
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-4(%rbp), %ecx
	subl	-36(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_35(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_37(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	cvtsi2ssl	-4(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_38(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-48(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_39(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-40(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_5
.LBB4_8:                                # %for.end
                                        #   in Loop: Header=BB4_3 Depth=2
	jmp	.LBB4_9
.LBB4_9:                                # %for.inc22
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_3
.LBB4_10:                               # %for.end24
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc25
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB4_1
.LBB4_12:                               # %for.end27
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	init_array, .Lfunc_end4-init_array
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function kernel_heat_3d
.LCPI5_0:
	.long	0x3e000000                      # float 0.125
.LCPI5_1:
	.long	0x40000000                      # float 2
	.text
	.p2align	4, 0x90
	.type	kernel_heat_3d,@function
kernel_heat_3d:                         # @kernel_heat_3d
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$1, -28(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
                                        #       Child Loop BB5_5 Depth 3
                                        #         Child Loop BB5_7 Depth 4
                                        #     Child Loop BB5_15 Depth 2
                                        #       Child Loop BB5_17 Depth 3
                                        #         Child Loop BB5_19 Depth 4
	cmpl	$10, -28(%rbp)
	jg	.LBB5_28
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, -32(%rbp)
.LBB5_3:                                # %for.cond1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_5 Depth 3
                                        #         Child Loop BB5_7 Depth 4
	movl	-32(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_14
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	$1, -36(%rbp)
.LBB5_5:                                # %for.cond4
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_7 Depth 4
	movl	-36(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_12
# %bb.6:                                # %for.body7
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	$1, -40(%rbp)
.LBB5_7:                                # %for.cond8
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        #       Parent Loop BB5_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-40(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_10
# %bb.8:                                # %for.body11
                                        #   in Loop: Header=BB5_7 Depth=4
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -136(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_40(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -140(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_41(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-140(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -132(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_42(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-136(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-132(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -128(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_43(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -124(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_44(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-128(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-124(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -120(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_45(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-120(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_46(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -112(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_47(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -116(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_48(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-116(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_49(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-112(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-108(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_50(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -100(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_51(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-104(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-100(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_52(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-96(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_53(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-92(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-88(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_54(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_55(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_56(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-84(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_57(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-80(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-76(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_58(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_59(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-72(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-68(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_60(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-64(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_61(%rip), %rsi
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
	leaq	.L__unnamed_62(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_63(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_64(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-44(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB5_7 Depth=4
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_7
.LBB5_10:                               # %for.end
                                        #   in Loop: Header=BB5_5 Depth=3
	jmp	.LBB5_11
.LBB5_11:                               # %for.inc95
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_5
.LBB5_12:                               # %for.end97
                                        #   in Loop: Header=BB5_3 Depth=2
	jmp	.LBB5_13
.LBB5_13:                               # %for.inc98
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB5_3
.LBB5_14:                               # %for.end100
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, -32(%rbp)
.LBB5_15:                               # %for.cond101
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
                                        #         Child Loop BB5_19 Depth 4
	movl	-32(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_26
# %bb.16:                               # %for.body104
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	$1, -36(%rbp)
.LBB5_17:                               # %for.cond105
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_19 Depth 4
	movl	-36(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_24
# %bb.18:                               # %for.body108
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	$1, -40(%rbp)
.LBB5_19:                               # %for.cond109
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        #       Parent Loop BB5_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-40(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_22
# %bb.20:                               # %for.body112
                                        #   in Loop: Header=BB5_19 Depth=4
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -236(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_65(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -240(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_66(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-240(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -232(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_67(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-236(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-232(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -228(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_68(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -224(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_69(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-228(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-224(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -220(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_70(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-220(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -192(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_71(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -212(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_72(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -216(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_73(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-216(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -208(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_74(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-212(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-208(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -204(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_75(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -200(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_76(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-204(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-200(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -196(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_77(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-196(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -188(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_78(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-192(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-188(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -160(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_79(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -180(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_80(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -184(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_81(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-184(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -176(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_82(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-180(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-176(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -172(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_83(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -168(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_84(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-172(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-168(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_85(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-164(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI5_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -156(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_86(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-160(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-156(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -152(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_87(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -148(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_88(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-152(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-148(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -144(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_89(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-144(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.21:                               # %for.inc200
                                        #   in Loop: Header=BB5_19 Depth=4
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_19
.LBB5_22:                               # %for.end202
                                        #   in Loop: Header=BB5_17 Depth=3
	jmp	.LBB5_23
.LBB5_23:                               # %for.inc203
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_17
.LBB5_24:                               # %for.end205
                                        #   in Loop: Header=BB5_15 Depth=2
	jmp	.LBB5_25
.LBB5_25:                               # %for.inc206
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB5_15
.LBB5_26:                               # %for.end208
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_27
.LBB5_27:                               # %for.inc209
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_1
.LBB5_28:                               # %for.end211
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	kernel_heat_3d, .Lfunc_end5-kernel_heat_3d
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function init_array.1
.LCPI6_0:
	.long	0x41200000                      # float 10
	.text
	.p2align	4, 0x90
	.type	init_array.1,@function
init_array.1:                           # @init_array.1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #       Child Loop BB6_5 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -32(%rbp)
.LBB6_3:                                # %for.cond4
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_5 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_10
# %bb.4:                                # %for.body6
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	$0, -36(%rbp)
.LBB6_5:                                # %for.cond7
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_8
# %bb.6:                                # %for.body9
                                        #   in Loop: Header=BB6_5 Depth=3
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-4(%rbp), %ecx
	subl	-36(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_90(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI6_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_91(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	cvtsi2ssl	-4(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_92(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-48(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_93(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-40(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end
                                        #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_9
.LBB6_9:                                # %for.inc22
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB6_3
.LBB6_10:                               # %for.end24
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_11
.LBB6_11:                               # %for.inc25
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_1
.LBB6_12:                               # %for.end27
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	init_array.1, .Lfunc_end6-init_array.1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function kernel_heat_3d.2
.LCPI7_0:
	.long	0x3e000000                      # float 0.125
.LCPI7_1:
	.long	0x40000000                      # float 2
	.text
	.p2align	4, 0x90
	.type	kernel_heat_3d.2,@function
kernel_heat_3d.2:                       # @kernel_heat_3d.2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$1, -28(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
                                        #       Child Loop BB7_5 Depth 3
                                        #         Child Loop BB7_7 Depth 4
                                        #     Child Loop BB7_15 Depth 2
                                        #       Child Loop BB7_17 Depth 3
                                        #         Child Loop BB7_19 Depth 4
	cmpl	$10, -28(%rbp)
	jg	.LBB7_28
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$1, -32(%rbp)
.LBB7_3:                                # %for.cond1
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_5 Depth 3
                                        #         Child Loop BB7_7 Depth 4
	movl	-32(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_14
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	$1, -36(%rbp)
.LBB7_5:                                # %for.cond4
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_7 Depth 4
	movl	-36(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_12
# %bb.6:                                # %for.body7
                                        #   in Loop: Header=BB7_5 Depth=3
	movl	$1, -40(%rbp)
.LBB7_7:                                # %for.cond8
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_3 Depth=2
                                        #       Parent Loop BB7_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-40(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_10
# %bb.8:                                # %for.body11
                                        #   in Loop: Header=BB7_7 Depth=4
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -136(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_94(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -140(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_95(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-140(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -132(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_96(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-136(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-132(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -128(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_97(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -124(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_98(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-128(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-124(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -120(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_99(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-120(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_100(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -112(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_101(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -116(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_102(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-116(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_103(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-112(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-108(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_104(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -100(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_105(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-104(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-100(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_106(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-96(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_107(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-92(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-88(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_108(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_109(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_110(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-84(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_111(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-80(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-76(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_112(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_113(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-72(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-68(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_114(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-64(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_115(%rip), %rsi
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
	leaq	.L__unnamed_116(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_117(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_118(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-44(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB7_7 Depth=4
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_7
.LBB7_10:                               # %for.end
                                        #   in Loop: Header=BB7_5 Depth=3
	jmp	.LBB7_11
.LBB7_11:                               # %for.inc95
                                        #   in Loop: Header=BB7_5 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB7_5
.LBB7_12:                               # %for.end97
                                        #   in Loop: Header=BB7_3 Depth=2
	jmp	.LBB7_13
.LBB7_13:                               # %for.inc98
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB7_3
.LBB7_14:                               # %for.end100
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$1, -32(%rbp)
.LBB7_15:                               # %for.cond101
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_17 Depth 3
                                        #         Child Loop BB7_19 Depth 4
	movl	-32(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_26
# %bb.16:                               # %for.body104
                                        #   in Loop: Header=BB7_15 Depth=2
	movl	$1, -36(%rbp)
.LBB7_17:                               # %for.cond105
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_19 Depth 4
	movl	-36(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_24
# %bb.18:                               # %for.body108
                                        #   in Loop: Header=BB7_17 Depth=3
	movl	$1, -40(%rbp)
.LBB7_19:                               # %for.cond109
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        #       Parent Loop BB7_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-40(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_22
# %bb.20:                               # %for.body112
                                        #   in Loop: Header=BB7_19 Depth=4
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -236(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_119(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -240(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_120(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-240(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -232(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_121(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-236(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-232(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -228(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_122(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -224(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_123(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-228(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-224(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -220(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_124(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-220(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -192(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_125(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -212(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_126(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -216(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_127(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-216(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -208(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_128(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-212(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-208(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -204(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_129(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -200(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_130(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-204(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-200(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -196(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_131(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-196(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -188(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_132(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-192(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-188(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -160(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_133(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -180(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_134(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -184(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_135(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-184(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -176(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_136(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-180(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-176(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -172(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_137(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -168(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_138(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-172(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-168(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_139(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-164(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI7_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -156(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_140(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-160(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-156(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -152(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_141(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -148(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_142(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-152(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-148(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -144(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_143(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-144(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.21:                               # %for.inc200
                                        #   in Loop: Header=BB7_19 Depth=4
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_19
.LBB7_22:                               # %for.end202
                                        #   in Loop: Header=BB7_17 Depth=3
	jmp	.LBB7_23
.LBB7_23:                               # %for.inc203
                                        #   in Loop: Header=BB7_17 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB7_17
.LBB7_24:                               # %for.end205
                                        #   in Loop: Header=BB7_15 Depth=2
	jmp	.LBB7_25
.LBB7_25:                               # %for.inc206
                                        #   in Loop: Header=BB7_15 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB7_15
.LBB7_26:                               # %for.end208
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_27
.LBB7_27:                               # %for.inc209
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_1
.LBB7_28:                               # %for.end211
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	kernel_heat_3d.2, .Lfunc_end7-kernel_heat_3d.2
	.cfi_endproc
                                        # -- End function
	.type	A_float,@object                 # @A_float
	.bss
	.globl	A_float
	.p2align	4
A_float:
	.zero	500
	.size	A_float, 500

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

	.type	.L__unnamed_144,@object         # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_144:
	.asciz	"Float_half"
	.size	.L__unnamed_144, 11

	.type	.L__unnamed_145,@object         # @1
.L__unnamed_145:
	.asciz	"Float_bfloat"
	.size	.L__unnamed_145, 13

	.type	.L__unnamed_2,@object           # @2
.L__unnamed_2:
	.asciz	"Float_float"
	.size	.L__unnamed_2, 12

	.type	.L__unnamed_146,@object         # @3
.L__unnamed_146:
	.asciz	"Float_double"
	.size	.L__unnamed_146, 13

	.type	.L__unnamed_147,@object         # @4
.L__unnamed_147:
	.asciz	"Float_x86_fp80"
	.size	.L__unnamed_147, 15

	.type	.L__unnamed_148,@object         # @5
.L__unnamed_148:
	.asciz	"Float_fp128"
	.size	.L__unnamed_148, 12

	.type	.L__unnamed_149,@object         # @6
.L__unnamed_149:
	.asciz	"Float_ppc_fp128"
	.size	.L__unnamed_149, 16

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
	.asciz	"timer_start"
	.size	.L__unnamed_32, 12

	.type	.L__unnamed_33,@object          # @38
.L__unnamed_33:
	.asciz	"timer_stop"
	.size	.L__unnamed_33, 11

	.type	.L__unnamed_34,@object          # @39
.L__unnamed_34:
	.asciz	"a::var24"
	.size	.L__unnamed_34, 9

	.type	.L__unnamed_35,@object          # @40
.L__unnamed_35:
	.asciz	"a::var25"
	.size	.L__unnamed_35, 9

	.type	.L__unnamed_36,@object          # @41
.L__unnamed_36:
	.asciz	"sitofp"
	.size	.L__unnamed_36, 7

	.type	.L__unnamed_37,@object          # @42
.L__unnamed_37:
	.asciz	"a::var26"
	.size	.L__unnamed_37, 9

	.type	.L__unnamed_38,@object          # @43
.L__unnamed_38:
	.asciz	"a::var27"
	.size	.L__unnamed_38, 9

	.type	.L__unnamed_39,@object          # @44
.L__unnamed_39:
	.asciz	"a::var28"
	.size	.L__unnamed_39, 9

	.type	.L__unnamed_40,@object          # @45
.L__unnamed_40:
	.asciz	"a::var29"
	.size	.L__unnamed_40, 9

	.type	.L__unnamed_41,@object          # @46
.L__unnamed_41:
	.asciz	"a::var30"
	.size	.L__unnamed_41, 9

	.type	.L__unnamed_42,@object          # @47
.L__unnamed_42:
	.asciz	"a::var31"
	.size	.L__unnamed_42, 9

	.type	.L__unnamed_43,@object          # @48
.L__unnamed_43:
	.asciz	"a::var32"
	.size	.L__unnamed_43, 9

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

	.type	.L__unnamed_93,@object          # @98
.L__unnamed_93:
	.asciz	"a::var82"
	.size	.L__unnamed_93, 9

	.type	.L__unnamed_94,@object          # @99
.L__unnamed_94:
	.asciz	"a::var83"
	.size	.L__unnamed_94, 9

	.type	.L__unnamed_95,@object          # @100
.L__unnamed_95:
	.asciz	"a::var84"
	.size	.L__unnamed_95, 9

	.type	.L__unnamed_96,@object          # @101
.L__unnamed_96:
	.asciz	"a::var85"
	.size	.L__unnamed_96, 9

	.type	.L__unnamed_97,@object          # @102
.L__unnamed_97:
	.asciz	"a::var86"
	.size	.L__unnamed_97, 9

	.type	.L__unnamed_98,@object          # @103
.L__unnamed_98:
	.asciz	"a::var87"
	.size	.L__unnamed_98, 9

	.type	.L__unnamed_99,@object          # @104
.L__unnamed_99:
	.asciz	"a::var88"
	.size	.L__unnamed_99, 9

	.type	.L__unnamed_100,@object         # @105
.L__unnamed_100:
	.asciz	"a::var89"
	.size	.L__unnamed_100, 9

	.type	.L__unnamed_101,@object         # @106
.L__unnamed_101:
	.asciz	"a::var90"
	.size	.L__unnamed_101, 9

	.type	.L__unnamed_102,@object         # @107
.L__unnamed_102:
	.asciz	"a::var91"
	.size	.L__unnamed_102, 9

	.type	.L__unnamed_103,@object         # @108
.L__unnamed_103:
	.asciz	"a::var92"
	.size	.L__unnamed_103, 9

	.type	.L__unnamed_104,@object         # @109
.L__unnamed_104:
	.asciz	"a::var93"
	.size	.L__unnamed_104, 9

	.type	.L__unnamed_105,@object         # @110
.L__unnamed_105:
	.asciz	"a::var94"
	.size	.L__unnamed_105, 9

	.type	.L__unnamed_106,@object         # @111
.L__unnamed_106:
	.asciz	"a::var95"
	.size	.L__unnamed_106, 9

	.type	.L__unnamed_107,@object         # @112
.L__unnamed_107:
	.asciz	"a::var96"
	.size	.L__unnamed_107, 9

	.type	.L__unnamed_108,@object         # @113
.L__unnamed_108:
	.asciz	"a::var97"
	.size	.L__unnamed_108, 9

	.type	.L__unnamed_109,@object         # @114
.L__unnamed_109:
	.asciz	"a::var98"
	.size	.L__unnamed_109, 9

	.type	.L__unnamed_110,@object         # @115
.L__unnamed_110:
	.asciz	"a::var99"
	.size	.L__unnamed_110, 9

	.type	.L__unnamed_111,@object         # @116
.L__unnamed_111:
	.asciz	"a::var100"
	.size	.L__unnamed_111, 10

	.type	.L__unnamed_112,@object         # @117
.L__unnamed_112:
	.asciz	"a::var101"
	.size	.L__unnamed_112, 10

	.type	.L__unnamed_113,@object         # @118
.L__unnamed_113:
	.asciz	"a::var102"
	.size	.L__unnamed_113, 10

	.type	.L__unnamed_114,@object         # @119
.L__unnamed_114:
	.asciz	"a::var103"
	.size	.L__unnamed_114, 10

	.type	.L__unnamed_115,@object         # @120
.L__unnamed_115:
	.asciz	"a::var104"
	.size	.L__unnamed_115, 10

	.type	.L__unnamed_116,@object         # @121
.L__unnamed_116:
	.asciz	"a::var105"
	.size	.L__unnamed_116, 10

	.type	.L__unnamed_117,@object         # @122
.L__unnamed_117:
	.asciz	"a::var106"
	.size	.L__unnamed_117, 10

	.type	.L__unnamed_118,@object         # @123
.L__unnamed_118:
	.asciz	"a::var107"
	.size	.L__unnamed_118, 10

	.type	.L__unnamed_119,@object         # @124
.L__unnamed_119:
	.asciz	"a::var108"
	.size	.L__unnamed_119, 10

	.type	.L__unnamed_120,@object         # @125
.L__unnamed_120:
	.asciz	"a::var109"
	.size	.L__unnamed_120, 10

	.type	.L__unnamed_121,@object         # @126
.L__unnamed_121:
	.asciz	"a::var110"
	.size	.L__unnamed_121, 10

	.type	.L__unnamed_122,@object         # @127
.L__unnamed_122:
	.asciz	"a::var111"
	.size	.L__unnamed_122, 10

	.type	.L__unnamed_123,@object         # @128
.L__unnamed_123:
	.asciz	"a::var112"
	.size	.L__unnamed_123, 10

	.type	.L__unnamed_124,@object         # @129
.L__unnamed_124:
	.asciz	"a::var113"
	.size	.L__unnamed_124, 10

	.type	.L__unnamed_125,@object         # @130
.L__unnamed_125:
	.asciz	"a::var114"
	.size	.L__unnamed_125, 10

	.type	.L__unnamed_126,@object         # @131
.L__unnamed_126:
	.asciz	"a::var115"
	.size	.L__unnamed_126, 10

	.type	.L__unnamed_127,@object         # @132
.L__unnamed_127:
	.asciz	"a::var116"
	.size	.L__unnamed_127, 10

	.type	.L__unnamed_128,@object         # @133
.L__unnamed_128:
	.asciz	"a::var117"
	.size	.L__unnamed_128, 10

	.type	.L__unnamed_129,@object         # @134
.L__unnamed_129:
	.asciz	"a::var118"
	.size	.L__unnamed_129, 10

	.type	.L__unnamed_130,@object         # @135
.L__unnamed_130:
	.asciz	"a::var119"
	.size	.L__unnamed_130, 10

	.type	.L__unnamed_131,@object         # @136
.L__unnamed_131:
	.asciz	"a::var120"
	.size	.L__unnamed_131, 10

	.type	.L__unnamed_132,@object         # @137
.L__unnamed_132:
	.asciz	"a::var121"
	.size	.L__unnamed_132, 10

	.type	.L__unnamed_133,@object         # @138
.L__unnamed_133:
	.asciz	"a::var122"
	.size	.L__unnamed_133, 10

	.type	.L__unnamed_134,@object         # @139
.L__unnamed_134:
	.asciz	"a::var123"
	.size	.L__unnamed_134, 10

	.type	.L__unnamed_135,@object         # @140
.L__unnamed_135:
	.asciz	"a::var124"
	.size	.L__unnamed_135, 10

	.type	.L__unnamed_136,@object         # @141
.L__unnamed_136:
	.asciz	"a::var125"
	.size	.L__unnamed_136, 10

	.type	.L__unnamed_137,@object         # @142
.L__unnamed_137:
	.asciz	"a::var126"
	.size	.L__unnamed_137, 10

	.type	.L__unnamed_138,@object         # @143
.L__unnamed_138:
	.asciz	"a::var127"
	.size	.L__unnamed_138, 10

	.type	.L__unnamed_139,@object         # @144
.L__unnamed_139:
	.asciz	"a::var128"
	.size	.L__unnamed_139, 10

	.type	.L__unnamed_140,@object         # @145
.L__unnamed_140:
	.asciz	"a::var129"
	.size	.L__unnamed_140, 10

	.type	.L__unnamed_141,@object         # @146
.L__unnamed_141:
	.asciz	"a::var130"
	.size	.L__unnamed_141, 10

	.type	.L__unnamed_142,@object         # @147
.L__unnamed_142:
	.asciz	"a::var131"
	.size	.L__unnamed_142, 10

	.type	.L__unnamed_143,@object         # @148
.L__unnamed_143:
	.asciz	"a::var132"
	.size	.L__unnamed_143, 10

	.ident	"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym init_array.1
	.addrsig_sym kernel_heat_3d.2
	.addrsig_sym printf
	.addrsig_sym A_float
	.addrsig_sym PrintfFormatStr
	.addrsig_sym PrintfTimerStr

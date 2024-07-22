	.text
	.file	"ludcmp.c"
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
	subq	$3488, %rsp                     # imm = 0xDA0
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$20, -20(%rbp)
	movl	-20(%rbp), %edi
	leaq	-1632(%rbp), %rsi
	leaq	-3232(%rbp), %rdx
	leaq	-3312(%rbp), %rcx
	leaq	-3392(%rbp), %r8
	leaq	-3472(%rbp), %r9
	callq	init_array.1
	callq	timer_start
	movl	-20(%rbp), %edi
	leaq	-1632(%rbp), %rsi
	leaq	-3312(%rbp), %rdx
	leaq	-3392(%rbp), %rcx
	leaq	-3472(%rbp), %r8
	callq	kernel_ludcmp.2
	callq	timer_stop
	movl	$0, -3476(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-3476(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-3476(%rbp), %rax
	movss	-3392(%rbp,%rax,4), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -3480(%rbp)              # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_34(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-3480(%rbp), %xmm0              # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movslq	-3476(%rbp), %rcx
	leaq	x_float(%rip), %rax
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-3476(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3476(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	xorl	%eax, %eax
	addq	$3488, %rsp                     # imm = 0xDA0
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
	.long	0x3f800000                      # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI4_1:
	.quad	0x4010000000000000              # double 4
.LCPI4_2:
	.quad	0x4000000000000000              # double 2
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
	subq	$176, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cvtsi2ssl	-4(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_35(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-76(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	movl	$0, -52(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-52(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -116(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_37(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -112(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_38(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-116(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-112(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_39(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-108(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)               # 8-byte Spill
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_40(%rip), %rsi
	leaq	.L__unnamed_41(%rip), %rdx
	leaq	.L__unnamed_42(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movsd	-104(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)                # 8-byte Spill
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_43(%rip), %rsi
	leaq	.L__unnamed_41(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movsd	-96(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)                # 8-byte Spill
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_44(%rip), %rsi
	leaq	.L__unnamed_41(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movsd	-88(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_45(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_46(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-80(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movl	$0, -52(%rbp)
.LBB4_5:                                # %for.cond14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #     Child Loop BB4_11 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_16
# %bb.6:                                # %for.body17
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	$0, -56(%rbp)
.LBB4_7:                                # %for.cond18
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB4_10
# %bb.8:                                # %for.body21
                                        #   in Loop: Header=BB4_7 Depth=2
	xorl	%eax, %eax
	subl	-56(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -132(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_47(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	cvtsi2ssl	-4(%rbp), %xmm0
	movss	%xmm0, -128(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_48(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-132(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-128(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -124(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_49(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-124(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -120(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_50(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-120(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                # %for.inc30
                                        #   in Loop: Header=BB4_7 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB4_7
.LBB4_10:                               # %for.end32
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB4_11:                               # %for.cond34
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_14
# %bb.12:                               # %for.body37
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.13:                               # %for.inc42
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB4_11
.LBB4_14:                               # %for.end44
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-52(%rbp), %rcx
	movss	.LCPI4_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax,%rcx,4)
# %bb.15:                               # %for.inc49
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB4_5
.LBB4_16:                               # %for.end51
	movl	$0, -64(%rbp)
.LBB4_17:                               # %for.cond52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_19 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_24
# %bb.18:                               # %for.body55
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	$0, -68(%rbp)
.LBB4_19:                               # %for.cond56
                                        #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_22
# %bb.20:                               # %for.body59
                                        #   in Loop: Header=BB4_19 Depth=2
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-68(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.21:                               # %for.inc64
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB4_19
.LBB4_22:                               # %for.end66
                                        #   in Loop: Header=BB4_17 Depth=1
	jmp	.LBB4_23
.LBB4_23:                               # %for.inc67
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB4_17
.LBB4_24:                               # %for.end69
	movl	$0, -72(%rbp)
.LBB4_25:                               # %for.cond70
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_27 Depth 2
                                        #       Child Loop BB4_29 Depth 3
	movl	-72(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_36
# %bb.26:                               # %for.body73
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	$0, -64(%rbp)
.LBB4_27:                               # %for.cond74
                                        #   Parent Loop BB4_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_29 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_34
# %bb.28:                               # %for.body77
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	$0, -68(%rbp)
.LBB4_29:                               # %for.cond78
                                        #   Parent Loop BB4_25 Depth=1
                                        #     Parent Loop BB4_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_32
# %bb.30:                               # %for.body81
                                        #   in Loop: Header=BB4_29 Depth=3
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-72(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -172(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_51(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-68(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-72(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -168(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_52(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-172(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-168(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -160(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_53(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movslq	-68(%rbp), %rcx
	movq	%rcx, -152(%rbp)                # 8-byte Spill
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_54(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-164(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-160(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -156(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_55(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-156(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-152(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $edx killed $eax
	movq	-144(%rbp), %rax                # 8-byte Reload
	movss	%xmm0, (%rax,%rcx,4)
# %bb.31:                               # %for.inc95
                                        #   in Loop: Header=BB4_29 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB4_29
.LBB4_32:                               # %for.end97
                                        #   in Loop: Header=BB4_27 Depth=2
	jmp	.LBB4_33
.LBB4_33:                               # %for.inc98
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB4_27
.LBB4_34:                               # %for.end100
                                        #   in Loop: Header=BB4_25 Depth=1
	jmp	.LBB4_35
.LBB4_35:                               # %for.inc101
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB4_25
.LBB4_36:                               # %for.end103
	movl	$0, -64(%rbp)
.LBB4_37:                               # %for.cond104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_39 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_44
# %bb.38:                               # %for.body107
                                        #   in Loop: Header=BB4_37 Depth=1
	movl	$0, -68(%rbp)
.LBB4_39:                               # %for.cond108
                                        #   Parent Loop BB4_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_42
# %bb.40:                               # %for.body111
                                        #   in Loop: Header=BB4_39 Depth=2
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-68(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -176(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_56(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-176(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-68(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.41:                               # %for.inc120
                                        #   in Loop: Header=BB4_39 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB4_39
.LBB4_42:                               # %for.end122
                                        #   in Loop: Header=BB4_37 Depth=1
	jmp	.LBB4_43
.LBB4_43:                               # %for.inc123
                                        #   in Loop: Header=BB4_37 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB4_37
.LBB4_44:                               # %for.end125
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	init_array, .Lfunc_end4-init_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_ludcmp
	.type	kernel_ludcmp,@function
kernel_ludcmp:                          # @kernel_ludcmp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
                                        #       Child Loop BB5_5 Depth 3
                                        #     Child Loop BB5_11 Depth 2
                                        #       Child Loop BB5_13 Depth 3
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB5_20
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -48(%rbp)
.LBB5_3:                                # %for.cond2
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_5 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB5_10
# %bb.4:                                # %for.body4
                                        #   in Loop: Header=BB5_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_57(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-60(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movl	$0, -52(%rbp)
.LBB5_5:                                # %for.cond7
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB5_8
# %bb.6:                                # %for.body9
                                        #   in Loop: Header=BB5_5 Depth=3
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-52(%rbp), %rcx
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
	movslq	-52(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_59(%rip), %rsi
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
	leaq	.L__unnamed_60(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_61(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
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
	leaq	.L__unnamed_62(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-64(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB5_5
.LBB5_8:                                # %for.end
                                        #   in Loop: Header=BB5_3 Depth=2
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_63(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-92(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-88(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_64(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-84(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                # %for.inc26
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_3
.LBB5_10:                               # %for.end28
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB5_11:                               # %for.cond29
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_13 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB5_18
# %bb.12:                               # %for.body31
                                        #   in Loop: Header=BB5_11 Depth=2
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_65(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-96(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movl	$0, -52(%rbp)
.LBB5_13:                               # %for.cond36
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB5_16
# %bb.14:                               # %for.body38
                                        #   in Loop: Header=BB5_13 Depth=3
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -116(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_66(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -112(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_67(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-116(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-112(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_68(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -108(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_69(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-108(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-104(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_70(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-100(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
# %bb.15:                               # %for.inc49
                                        #   in Loop: Header=BB5_13 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB5_13
.LBB5_16:                               # %for.end51
                                        #   in Loop: Header=BB5_11 Depth=2
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.17:                               # %for.inc56
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_11
.LBB5_18:                               # %for.end58
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_19
.LBB5_19:                               # %for.inc59
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_1
.LBB5_20:                               # %for.end61
	movl	$0, -44(%rbp)
.LBB5_21:                               # %for.cond62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_23 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB5_28
# %bb.22:                               # %for.body64
                                        #   in Loop: Header=BB5_21 Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -120(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_71(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-120(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movl	$0, -48(%rbp)
.LBB5_23:                               # %for.cond67
                                        #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB5_26
# %bb.24:                               # %for.body69
                                        #   in Loop: Header=BB5_23 Depth=2
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -140(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_72(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-40(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -136(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_73(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-140(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-136(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -128(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_74(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -132(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_75(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-132(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-128(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -124(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_76(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-124(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
# %bb.25:                               # %for.inc78
                                        #   in Loop: Header=BB5_23 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_23
.LBB5_26:                               # %for.end80
                                        #   in Loop: Header=BB5_21 Depth=1
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.27:                               # %for.inc83
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_21
.LBB5_28:                               # %for.end85
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB5_29:                               # %for.cond87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_31 Depth 2
	cmpl	$0, -44(%rbp)
	jl	.LBB5_36
# %bb.30:                               # %for.body89
                                        #   in Loop: Header=BB5_29 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -144(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_77(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-144(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB5_31:                               # %for.cond92
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB5_34
# %bb.32:                               # %for.body94
                                        #   in Loop: Header=BB5_31 Depth=2
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_78(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -160(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_79(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-164(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-160(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -152(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_80(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -156(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_81(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-156(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-152(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -148(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_82(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-148(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
# %bb.33:                               # %for.inc103
                                        #   in Loop: Header=BB5_31 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_31
.LBB5_34:                               # %for.end105
                                        #   in Loop: Header=BB5_29 Depth=1
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -176(%rbp)               # 4-byte Spill
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -172(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_83(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-176(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-172(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -168(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_84(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-168(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.35:                               # %for.inc113
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_29
.LBB5_36:                               # %for.end114
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	kernel_ludcmp, .Lfunc_end5-kernel_ludcmp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function init_array.1
.LCPI6_0:
	.long	0x3f800000                      # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI6_1:
	.quad	0x4010000000000000              # double 4
.LCPI6_2:
	.quad	0x4000000000000000              # double 2
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
	subq	$176, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cvtsi2ssl	-4(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_85(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-76(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	movl	$0, -52(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-52(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -116(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_86(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -112(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_87(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-116(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-112(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_88(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-108(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)               # 8-byte Spill
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_89(%rip), %rsi
	leaq	.L__unnamed_41(%rip), %rdx
	leaq	.L__unnamed_42(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movsd	-104(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)                # 8-byte Spill
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_90(%rip), %rsi
	leaq	.L__unnamed_41(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movsd	-96(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI6_1(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)                # 8-byte Spill
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_91(%rip), %rsi
	leaq	.L__unnamed_41(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movsd	-88(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_92(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_46(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-80(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movl	$0, -52(%rbp)
.LBB6_5:                                # %for.cond14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #     Child Loop BB6_11 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_16
# %bb.6:                                # %for.body17
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	$0, -56(%rbp)
.LBB6_7:                                # %for.cond18
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB6_10
# %bb.8:                                # %for.body21
                                        #   in Loop: Header=BB6_7 Depth=2
	xorl	%eax, %eax
	subl	-56(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -132(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_93(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	cvtsi2ssl	-4(%rbp), %xmm0
	movss	%xmm0, -128(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_94(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-132(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-128(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -124(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_95(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-124(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI6_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -120(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_96(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-120(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                # %for.inc30
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_7
.LBB6_10:                               # %for.end32
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB6_11:                               # %for.cond34
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_14
# %bb.12:                               # %for.body37
                                        #   in Loop: Header=BB6_11 Depth=2
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.13:                               # %for.inc42
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_11
.LBB6_14:                               # %for.end44
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-52(%rbp), %rcx
	movss	.LCPI6_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax,%rcx,4)
# %bb.15:                               # %for.inc49
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_5
.LBB6_16:                               # %for.end51
	movl	$0, -64(%rbp)
.LBB6_17:                               # %for.cond52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_19 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_24
# %bb.18:                               # %for.body55
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	$0, -68(%rbp)
.LBB6_19:                               # %for.cond56
                                        #   Parent Loop BB6_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_22
# %bb.20:                               # %for.body59
                                        #   in Loop: Header=BB6_19 Depth=2
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-68(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.21:                               # %for.inc64
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB6_19
.LBB6_22:                               # %for.end66
                                        #   in Loop: Header=BB6_17 Depth=1
	jmp	.LBB6_23
.LBB6_23:                               # %for.inc67
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB6_17
.LBB6_24:                               # %for.end69
	movl	$0, -72(%rbp)
.LBB6_25:                               # %for.cond70
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_27 Depth 2
                                        #       Child Loop BB6_29 Depth 3
	movl	-72(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_36
# %bb.26:                               # %for.body73
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	$0, -64(%rbp)
.LBB6_27:                               # %for.cond74
                                        #   Parent Loop BB6_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_29 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_34
# %bb.28:                               # %for.body77
                                        #   in Loop: Header=BB6_27 Depth=2
	movl	$0, -68(%rbp)
.LBB6_29:                               # %for.cond78
                                        #   Parent Loop BB6_25 Depth=1
                                        #     Parent Loop BB6_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_32
# %bb.30:                               # %for.body81
                                        #   in Loop: Header=BB6_29 Depth=3
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-72(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -172(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_97(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-68(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-72(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -168(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_98(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-172(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-168(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -160(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_99(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movslq	-68(%rbp), %rcx
	movq	%rcx, -152(%rbp)                # 8-byte Spill
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_100(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-164(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-160(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -156(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_101(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-156(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-152(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $edx killed $eax
	movq	-144(%rbp), %rax                # 8-byte Reload
	movss	%xmm0, (%rax,%rcx,4)
# %bb.31:                               # %for.inc95
                                        #   in Loop: Header=BB6_29 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB6_29
.LBB6_32:                               # %for.end97
                                        #   in Loop: Header=BB6_27 Depth=2
	jmp	.LBB6_33
.LBB6_33:                               # %for.inc98
                                        #   in Loop: Header=BB6_27 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB6_27
.LBB6_34:                               # %for.end100
                                        #   in Loop: Header=BB6_25 Depth=1
	jmp	.LBB6_35
.LBB6_35:                               # %for.inc101
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB6_25
.LBB6_36:                               # %for.end103
	movl	$0, -64(%rbp)
.LBB6_37:                               # %for.cond104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_39 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_44
# %bb.38:                               # %for.body107
                                        #   in Loop: Header=BB6_37 Depth=1
	movl	$0, -68(%rbp)
.LBB6_39:                               # %for.cond108
                                        #   Parent Loop BB6_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_42
# %bb.40:                               # %for.body111
                                        #   in Loop: Header=BB6_39 Depth=2
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-68(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -176(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_102(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-176(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-68(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.41:                               # %for.inc120
                                        #   in Loop: Header=BB6_39 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB6_39
.LBB6_42:                               # %for.end122
                                        #   in Loop: Header=BB6_37 Depth=1
	jmp	.LBB6_43
.LBB6_43:                               # %for.inc123
                                        #   in Loop: Header=BB6_37 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB6_37
.LBB6_44:                               # %for.end125
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	init_array.1, .Lfunc_end6-init_array.1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_ludcmp.2
	.type	kernel_ludcmp.2,@function
kernel_ludcmp.2:                        # @kernel_ludcmp.2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
                                        #       Child Loop BB7_5 Depth 3
                                        #     Child Loop BB7_11 Depth 2
                                        #       Child Loop BB7_13 Depth 3
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB7_20
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -48(%rbp)
.LBB7_3:                                # %for.cond2
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_5 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_10
# %bb.4:                                # %for.body4
                                        #   in Loop: Header=BB7_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_103(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-60(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movl	$0, -52(%rbp)
.LBB7_5:                                # %for.cond7
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB7_8
# %bb.6:                                # %for.body9
                                        #   in Loop: Header=BB7_5 Depth=3
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_104(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_105(%rip), %rsi
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
	leaq	.L__unnamed_106(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_107(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
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
	leaq	.L__unnamed_108(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-64(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB7_5 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_5
.LBB7_8:                                # %for.end
                                        #   in Loop: Header=BB7_3 Depth=2
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_109(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-92(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-88(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_110(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-84(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                # %for.inc26
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_3
.LBB7_10:                               # %for.end28
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB7_11:                               # %for.cond29
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_13 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB7_18
# %bb.12:                               # %for.body31
                                        #   in Loop: Header=BB7_11 Depth=2
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_111(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-96(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movl	$0, -52(%rbp)
.LBB7_13:                               # %for.cond36
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_16
# %bb.14:                               # %for.body38
                                        #   in Loop: Header=BB7_13 Depth=3
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -116(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_112(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -112(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_113(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-116(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-112(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_114(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -108(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_115(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-108(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-104(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_116(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-100(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
# %bb.15:                               # %for.inc49
                                        #   in Loop: Header=BB7_13 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_13
.LBB7_16:                               # %for.end51
                                        #   in Loop: Header=BB7_11 Depth=2
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.17:                               # %for.inc56
                                        #   in Loop: Header=BB7_11 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_11
.LBB7_18:                               # %for.end58
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_19
.LBB7_19:                               # %for.inc59
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_1
.LBB7_20:                               # %for.end61
	movl	$0, -44(%rbp)
.LBB7_21:                               # %for.cond62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_23 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB7_28
# %bb.22:                               # %for.body64
                                        #   in Loop: Header=BB7_21 Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -120(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_117(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-120(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movl	$0, -48(%rbp)
.LBB7_23:                               # %for.cond67
                                        #   Parent Loop BB7_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_26
# %bb.24:                               # %for.body69
                                        #   in Loop: Header=BB7_23 Depth=2
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -140(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_118(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-40(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -136(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_119(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-140(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-136(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -128(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_120(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -132(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_121(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-132(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-128(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -124(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_122(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-124(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
# %bb.25:                               # %for.inc78
                                        #   in Loop: Header=BB7_23 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_23
.LBB7_26:                               # %for.end80
                                        #   in Loop: Header=BB7_21 Depth=1
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.27:                               # %for.inc83
                                        #   in Loop: Header=BB7_21 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_21
.LBB7_28:                               # %for.end85
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB7_29:                               # %for.cond87
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
	cmpl	$0, -44(%rbp)
	jl	.LBB7_36
# %bb.30:                               # %for.body89
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -144(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_123(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-144(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB7_31:                               # %for.cond92
                                        #   Parent Loop BB7_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB7_34
# %bb.32:                               # %for.body94
                                        #   in Loop: Header=BB7_31 Depth=2
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_124(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -160(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_125(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-164(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-160(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -152(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_126(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -156(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_127(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-156(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-152(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, -148(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_128(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-148(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
# %bb.33:                               # %for.inc103
                                        #   in Loop: Header=BB7_31 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_31
.LBB7_34:                               # %for.end105
                                        #   in Loop: Header=BB7_29 Depth=1
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -176(%rbp)               # 4-byte Spill
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -172(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_129(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-176(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-172(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -168(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_130(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-168(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.35:                               # %for.inc113
                                        #   in Loop: Header=BB7_29 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_29
.LBB7_36:                               # %for.end114
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	kernel_ludcmp.2, .Lfunc_end7-kernel_ludcmp.2
	.cfi_endproc
                                        # -- End function
	.type	x_float,@object                 # @x_float
	.bss
	.globl	x_float
	.p2align	4
x_float:
	.zero	80
	.size	x_float, 80

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

	.type	.L__unnamed_131,@object         # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_131:
	.asciz	"Float_half"
	.size	.L__unnamed_131, 11

	.type	.L__unnamed_132,@object         # @1
.L__unnamed_132:
	.asciz	"Float_bfloat"
	.size	.L__unnamed_132, 13

	.type	.L__unnamed_2,@object           # @2
.L__unnamed_2:
	.asciz	"Float_float"
	.size	.L__unnamed_2, 12

	.type	.L__unnamed_41,@object          # @3
.L__unnamed_41:
	.asciz	"Float_double"
	.size	.L__unnamed_41, 13

	.type	.L__unnamed_133,@object         # @4
.L__unnamed_133:
	.asciz	"Float_x86_fp80"
	.size	.L__unnamed_133, 15

	.type	.L__unnamed_134,@object         # @5
.L__unnamed_134:
	.asciz	"Float_fp128"
	.size	.L__unnamed_134, 12

	.type	.L__unnamed_135,@object         # @6
.L__unnamed_135:
	.asciz	"Float_ppc_fp128"
	.size	.L__unnamed_135, 16

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

	.type	.L__unnamed_42,@object          # @46
.L__unnamed_42:
	.asciz	"fpext"
	.size	.L__unnamed_42, 6

	.type	.L__unnamed_43,@object          # @47
.L__unnamed_43:
	.asciz	"a::var30"
	.size	.L__unnamed_43, 9

	.type	.L__unnamed_44,@object          # @48
.L__unnamed_44:
	.asciz	"a::var31"
	.size	.L__unnamed_44, 9

	.type	.L__unnamed_45,@object          # @49
.L__unnamed_45:
	.asciz	"a::var32"
	.size	.L__unnamed_45, 9

	.type	.L__unnamed_46,@object          # @50
.L__unnamed_46:
	.asciz	"fptrunc"
	.size	.L__unnamed_46, 8

	.type	.L__unnamed_47,@object          # @51
.L__unnamed_47:
	.asciz	"a::var33"
	.size	.L__unnamed_47, 9

	.type	.L__unnamed_48,@object          # @52
.L__unnamed_48:
	.asciz	"a::var34"
	.size	.L__unnamed_48, 9

	.type	.L__unnamed_49,@object          # @53
.L__unnamed_49:
	.asciz	"a::var35"
	.size	.L__unnamed_49, 9

	.type	.L__unnamed_50,@object          # @54
.L__unnamed_50:
	.asciz	"a::var36"
	.size	.L__unnamed_50, 9

	.type	.L__unnamed_51,@object          # @55
.L__unnamed_51:
	.asciz	"a::var37"
	.size	.L__unnamed_51, 9

	.type	.L__unnamed_52,@object          # @56
.L__unnamed_52:
	.asciz	"a::var38"
	.size	.L__unnamed_52, 9

	.type	.L__unnamed_53,@object          # @57
.L__unnamed_53:
	.asciz	"a::var39"
	.size	.L__unnamed_53, 9

	.type	.L__unnamed_54,@object          # @58
.L__unnamed_54:
	.asciz	"a::var40"
	.size	.L__unnamed_54, 9

	.type	.L__unnamed_55,@object          # @59
.L__unnamed_55:
	.asciz	"a::var41"
	.size	.L__unnamed_55, 9

	.type	.L__unnamed_56,@object          # @60
.L__unnamed_56:
	.asciz	"a::var42"
	.size	.L__unnamed_56, 9

	.type	.L__unnamed_57,@object          # @61
.L__unnamed_57:
	.asciz	"a::var43"
	.size	.L__unnamed_57, 9

	.type	.L__unnamed_58,@object          # @62
.L__unnamed_58:
	.asciz	"a::var44"
	.size	.L__unnamed_58, 9

	.type	.L__unnamed_59,@object          # @63
.L__unnamed_59:
	.asciz	"a::var45"
	.size	.L__unnamed_59, 9

	.type	.L__unnamed_60,@object          # @64
.L__unnamed_60:
	.asciz	"a::var46"
	.size	.L__unnamed_60, 9

	.type	.L__unnamed_61,@object          # @65
.L__unnamed_61:
	.asciz	"a::var47"
	.size	.L__unnamed_61, 9

	.type	.L__unnamed_62,@object          # @66
.L__unnamed_62:
	.asciz	"a::var48"
	.size	.L__unnamed_62, 9

	.type	.L__unnamed_63,@object          # @67
.L__unnamed_63:
	.asciz	"a::var49"
	.size	.L__unnamed_63, 9

	.type	.L__unnamed_64,@object          # @68
.L__unnamed_64:
	.asciz	"a::var50"
	.size	.L__unnamed_64, 9

	.type	.L__unnamed_65,@object          # @69
.L__unnamed_65:
	.asciz	"a::var51"
	.size	.L__unnamed_65, 9

	.type	.L__unnamed_66,@object          # @70
.L__unnamed_66:
	.asciz	"a::var52"
	.size	.L__unnamed_66, 9

	.type	.L__unnamed_67,@object          # @71
.L__unnamed_67:
	.asciz	"a::var53"
	.size	.L__unnamed_67, 9

	.type	.L__unnamed_68,@object          # @72
.L__unnamed_68:
	.asciz	"a::var54"
	.size	.L__unnamed_68, 9

	.type	.L__unnamed_69,@object          # @73
.L__unnamed_69:
	.asciz	"a::var55"
	.size	.L__unnamed_69, 9

	.type	.L__unnamed_70,@object          # @74
.L__unnamed_70:
	.asciz	"a::var56"
	.size	.L__unnamed_70, 9

	.type	.L__unnamed_71,@object          # @75
.L__unnamed_71:
	.asciz	"a::var57"
	.size	.L__unnamed_71, 9

	.type	.L__unnamed_72,@object          # @76
.L__unnamed_72:
	.asciz	"a::var58"
	.size	.L__unnamed_72, 9

	.type	.L__unnamed_73,@object          # @77
.L__unnamed_73:
	.asciz	"a::var59"
	.size	.L__unnamed_73, 9

	.type	.L__unnamed_74,@object          # @78
.L__unnamed_74:
	.asciz	"a::var60"
	.size	.L__unnamed_74, 9

	.type	.L__unnamed_75,@object          # @79
.L__unnamed_75:
	.asciz	"a::var61"
	.size	.L__unnamed_75, 9

	.type	.L__unnamed_76,@object          # @80
.L__unnamed_76:
	.asciz	"a::var62"
	.size	.L__unnamed_76, 9

	.type	.L__unnamed_77,@object          # @81
.L__unnamed_77:
	.asciz	"a::var63"
	.size	.L__unnamed_77, 9

	.type	.L__unnamed_78,@object          # @82
.L__unnamed_78:
	.asciz	"a::var64"
	.size	.L__unnamed_78, 9

	.type	.L__unnamed_79,@object          # @83
.L__unnamed_79:
	.asciz	"a::var65"
	.size	.L__unnamed_79, 9

	.type	.L__unnamed_80,@object          # @84
.L__unnamed_80:
	.asciz	"a::var66"
	.size	.L__unnamed_80, 9

	.type	.L__unnamed_81,@object          # @85
.L__unnamed_81:
	.asciz	"a::var67"
	.size	.L__unnamed_81, 9

	.type	.L__unnamed_82,@object          # @86
.L__unnamed_82:
	.asciz	"a::var68"
	.size	.L__unnamed_82, 9

	.type	.L__unnamed_83,@object          # @87
.L__unnamed_83:
	.asciz	"a::var69"
	.size	.L__unnamed_83, 9

	.type	.L__unnamed_84,@object          # @88
.L__unnamed_84:
	.asciz	"a::var70"
	.size	.L__unnamed_84, 9

	.type	.L__unnamed_85,@object          # @89
.L__unnamed_85:
	.asciz	"a::var71"
	.size	.L__unnamed_85, 9

	.type	.L__unnamed_86,@object          # @90
.L__unnamed_86:
	.asciz	"a::var72"
	.size	.L__unnamed_86, 9

	.type	.L__unnamed_87,@object          # @91
.L__unnamed_87:
	.asciz	"a::var73"
	.size	.L__unnamed_87, 9

	.type	.L__unnamed_88,@object          # @92
.L__unnamed_88:
	.asciz	"a::var74"
	.size	.L__unnamed_88, 9

	.type	.L__unnamed_89,@object          # @93
.L__unnamed_89:
	.asciz	"a::var75"
	.size	.L__unnamed_89, 9

	.type	.L__unnamed_90,@object          # @94
.L__unnamed_90:
	.asciz	"a::var76"
	.size	.L__unnamed_90, 9

	.type	.L__unnamed_91,@object          # @95
.L__unnamed_91:
	.asciz	"a::var77"
	.size	.L__unnamed_91, 9

	.type	.L__unnamed_92,@object          # @96
.L__unnamed_92:
	.asciz	"a::var78"
	.size	.L__unnamed_92, 9

	.type	.L__unnamed_93,@object          # @97
.L__unnamed_93:
	.asciz	"a::var79"
	.size	.L__unnamed_93, 9

	.type	.L__unnamed_94,@object          # @98
.L__unnamed_94:
	.asciz	"a::var80"
	.size	.L__unnamed_94, 9

	.type	.L__unnamed_95,@object          # @99
.L__unnamed_95:
	.asciz	"a::var81"
	.size	.L__unnamed_95, 9

	.type	.L__unnamed_96,@object          # @100
.L__unnamed_96:
	.asciz	"a::var82"
	.size	.L__unnamed_96, 9

	.type	.L__unnamed_97,@object          # @101
.L__unnamed_97:
	.asciz	"a::var83"
	.size	.L__unnamed_97, 9

	.type	.L__unnamed_98,@object          # @102
.L__unnamed_98:
	.asciz	"a::var84"
	.size	.L__unnamed_98, 9

	.type	.L__unnamed_99,@object          # @103
.L__unnamed_99:
	.asciz	"a::var85"
	.size	.L__unnamed_99, 9

	.type	.L__unnamed_100,@object         # @104
.L__unnamed_100:
	.asciz	"a::var86"
	.size	.L__unnamed_100, 9

	.type	.L__unnamed_101,@object         # @105
.L__unnamed_101:
	.asciz	"a::var87"
	.size	.L__unnamed_101, 9

	.type	.L__unnamed_102,@object         # @106
.L__unnamed_102:
	.asciz	"a::var88"
	.size	.L__unnamed_102, 9

	.type	.L__unnamed_103,@object         # @107
.L__unnamed_103:
	.asciz	"a::var89"
	.size	.L__unnamed_103, 9

	.type	.L__unnamed_104,@object         # @108
.L__unnamed_104:
	.asciz	"a::var90"
	.size	.L__unnamed_104, 9

	.type	.L__unnamed_105,@object         # @109
.L__unnamed_105:
	.asciz	"a::var91"
	.size	.L__unnamed_105, 9

	.type	.L__unnamed_106,@object         # @110
.L__unnamed_106:
	.asciz	"a::var92"
	.size	.L__unnamed_106, 9

	.type	.L__unnamed_107,@object         # @111
.L__unnamed_107:
	.asciz	"a::var93"
	.size	.L__unnamed_107, 9

	.type	.L__unnamed_108,@object         # @112
.L__unnamed_108:
	.asciz	"a::var94"
	.size	.L__unnamed_108, 9

	.type	.L__unnamed_109,@object         # @113
.L__unnamed_109:
	.asciz	"a::var95"
	.size	.L__unnamed_109, 9

	.type	.L__unnamed_110,@object         # @114
.L__unnamed_110:
	.asciz	"a::var96"
	.size	.L__unnamed_110, 9

	.type	.L__unnamed_111,@object         # @115
.L__unnamed_111:
	.asciz	"a::var97"
	.size	.L__unnamed_111, 9

	.type	.L__unnamed_112,@object         # @116
.L__unnamed_112:
	.asciz	"a::var98"
	.size	.L__unnamed_112, 9

	.type	.L__unnamed_113,@object         # @117
.L__unnamed_113:
	.asciz	"a::var99"
	.size	.L__unnamed_113, 9

	.type	.L__unnamed_114,@object         # @118
.L__unnamed_114:
	.asciz	"a::var100"
	.size	.L__unnamed_114, 10

	.type	.L__unnamed_115,@object         # @119
.L__unnamed_115:
	.asciz	"a::var101"
	.size	.L__unnamed_115, 10

	.type	.L__unnamed_116,@object         # @120
.L__unnamed_116:
	.asciz	"a::var102"
	.size	.L__unnamed_116, 10

	.type	.L__unnamed_117,@object         # @121
.L__unnamed_117:
	.asciz	"a::var103"
	.size	.L__unnamed_117, 10

	.type	.L__unnamed_118,@object         # @122
.L__unnamed_118:
	.asciz	"a::var104"
	.size	.L__unnamed_118, 10

	.type	.L__unnamed_119,@object         # @123
.L__unnamed_119:
	.asciz	"a::var105"
	.size	.L__unnamed_119, 10

	.type	.L__unnamed_120,@object         # @124
.L__unnamed_120:
	.asciz	"a::var106"
	.size	.L__unnamed_120, 10

	.type	.L__unnamed_121,@object         # @125
.L__unnamed_121:
	.asciz	"a::var107"
	.size	.L__unnamed_121, 10

	.type	.L__unnamed_122,@object         # @126
.L__unnamed_122:
	.asciz	"a::var108"
	.size	.L__unnamed_122, 10

	.type	.L__unnamed_123,@object         # @127
.L__unnamed_123:
	.asciz	"a::var109"
	.size	.L__unnamed_123, 10

	.type	.L__unnamed_124,@object         # @128
.L__unnamed_124:
	.asciz	"a::var110"
	.size	.L__unnamed_124, 10

	.type	.L__unnamed_125,@object         # @129
.L__unnamed_125:
	.asciz	"a::var111"
	.size	.L__unnamed_125, 10

	.type	.L__unnamed_126,@object         # @130
.L__unnamed_126:
	.asciz	"a::var112"
	.size	.L__unnamed_126, 10

	.type	.L__unnamed_127,@object         # @131
.L__unnamed_127:
	.asciz	"a::var113"
	.size	.L__unnamed_127, 10

	.type	.L__unnamed_128,@object         # @132
.L__unnamed_128:
	.asciz	"a::var114"
	.size	.L__unnamed_128, 10

	.type	.L__unnamed_129,@object         # @133
.L__unnamed_129:
	.asciz	"a::var115"
	.size	.L__unnamed_129, 10

	.type	.L__unnamed_130,@object         # @134
.L__unnamed_130:
	.asciz	"a::var116"
	.size	.L__unnamed_130, 10

	.ident	"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym init_array.1
	.addrsig_sym kernel_ludcmp.2
	.addrsig_sym printf
	.addrsig_sym x_float
	.addrsig_sym PrintfFormatStr
	.addrsig_sym PrintfTimerStr

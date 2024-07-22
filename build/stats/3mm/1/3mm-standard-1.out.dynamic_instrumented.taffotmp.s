	.text
	.file	"3mm.c"
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$2648, %rsp                     # imm = 0xA58
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$0, -28(%rbp)
	movl	%edi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$6, -44(%rbp)
	movl	$8, -48(%rbp)
	movl	$10, -52(%rbp)
	movl	$12, -56(%rbp)
	movl	$14, -60(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	-60(%rbp), %r8d
	leaq	-496(%rbp), %r9
	leaq	-816(%rbp), %r15
	leaq	-1648(%rbp), %r14
	leaq	-2320(%rbp), %rbx
	leaq	-256(%rbp), %r11
	leaq	-1200(%rbp), %r10
	leaq	-2608(%rbp), %rax
	movq	%r15, (%rsp)
	movq	%r14, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%rax, 40(%rsp)
	callq	init_array.1
	callq	timer_start
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	-60(%rbp), %r8d
	leaq	-256(%rbp), %r9
	leaq	-496(%rbp), %r15
	leaq	-816(%rbp), %r14
	leaq	-1200(%rbp), %rbx
	leaq	-1648(%rbp), %r11
	leaq	-2320(%rbp), %r10
	leaq	-2608(%rbp), %rax
	movq	%r15, (%rsp)
	movq	%r14, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%rax, 40(%rsp)
	callq	kernel_3mm.2
	callq	timer_stop
	movl	$0, -2612(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-2612(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB3_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$0, -2616(%rbp)
.LBB3_3:                                # %for.cond21
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2616(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB3_6
# %bb.4:                                # %for.body23
                                        #   in Loop: Header=BB3_3 Depth=2
	movslq	-2612(%rbp), %rcx
	leaq	-2608(%rbp), %rax
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-2616(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -2620(%rbp)              # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_34(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-2620(%rbp), %xmm0              # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movslq	-2612(%rbp), %rcx
	leaq	G_float(%rip), %rax
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-2616(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-2616(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2616(%rbp)
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc30
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-2612(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2612(%rbp)
	jmp	.LBB3_1
.LBB3_8:                                # %for.end32
	xorl	%eax, %eax
	addq	$2648, %rsp                     # imm = 0xA58
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function init_array
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
	movq	56(%rbp), %rax
	movq	48(%rbp), %rax
	movq	40(%rbp), %rax
	movq	32(%rbp), %rax
	movq	24(%rbp), %rax
	movq	16(%rbp), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -40(%rbp)
.LBB4_3:                                # %for.cond3
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB4_6
# %bb.4:                                # %for.body5
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-36(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-4(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_35(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	imull	$5, -4(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_37(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_38(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-44(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_3
.LBB4_6:                                # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %for.inc10
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_1
.LBB4_8:                                # %for.end12
	movl	$0, -36(%rbp)
.LBB4_9:                                # %for.cond13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB4_16
# %bb.10:                               # %for.body16
                                        #   in Loop: Header=BB4_9 Depth=1
	movl	$0, -40(%rbp)
.LBB4_11:                               # %for.cond17
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB4_14
# %bb.12:                               # %for.body20
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	addl	$2, %eax
	cltd
	idivl	-8(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_39(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	imull	$5, -8(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_40(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-64(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_41(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.13:                               # %for.inc33
                                        #   in Loop: Header=BB4_11 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_11
.LBB4_14:                               # %for.end35
                                        #   in Loop: Header=BB4_9 Depth=1
	jmp	.LBB4_15
.LBB4_15:                               # %for.inc36
                                        #   in Loop: Header=BB4_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_9
.LBB4_16:                               # %for.end38
	movl	$0, -36(%rbp)
.LBB4_17:                               # %for.cond39
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_19 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB4_24
# %bb.18:                               # %for.body42
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	$0, -40(%rbp)
.LBB4_19:                               # %for.cond43
                                        #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_22
# %bb.20:                               # %for.body46
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	$3, %ecx
	imull	%ecx, %eax
	cltd
	idivl	-16(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_42(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	imull	$5, -16(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_43(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-76(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-72(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_44(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-68(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.21:                               # %for.inc58
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_19
.LBB4_22:                               # %for.end60
                                        #   in Loop: Header=BB4_17 Depth=1
	jmp	.LBB4_23
.LBB4_23:                               # %for.inc61
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_17
.LBB4_24:                               # %for.end63
	movl	$0, -36(%rbp)
.LBB4_25:                               # %for.cond64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_27 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_32
# %bb.26:                               # %for.body67
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	$0, -40(%rbp)
.LBB4_27:                               # %for.cond68
                                        #   Parent Loop BB4_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB4_30
# %bb.28:                               # %for.body71
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	$2, %ecx
	imull	%ecx, %eax
	addl	$2, %eax
	cltd
	idivl	-12(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -88(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_45(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	imull	$5, -12(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_46(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-88(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-84(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_47(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-80(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.29:                               # %for.inc84
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_27
.LBB4_30:                               # %for.end86
                                        #   in Loop: Header=BB4_25 Depth=1
	jmp	.LBB4_31
.LBB4_31:                               # %for.inc87
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_25
.LBB4_32:                               # %for.end89
	movl	$0, -36(%rbp)
.LBB4_33:                               # %for.cond90
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_35 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_40
# %bb.34:                               # %for.body93
                                        #   in Loop: Header=BB4_33 Depth=1
	movl	$0, -40(%rbp)
.LBB4_35:                               # %for.cond94
                                        #   Parent Loop BB4_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB4_38
# %bb.36:                               # %for.body97
                                        #   in Loop: Header=BB4_35 Depth=2
	movq	40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.37:                               # %for.inc102
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_35
.LBB4_38:                               # %for.end104
                                        #   in Loop: Header=BB4_33 Depth=1
	jmp	.LBB4_39
.LBB4_39:                               # %for.inc105
                                        #   in Loop: Header=BB4_33 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_33
.LBB4_40:                               # %for.end107
	movl	$0, -36(%rbp)
.LBB4_41:                               # %for.cond108
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_43 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB4_48
# %bb.42:                               # %for.body111
                                        #   in Loop: Header=BB4_41 Depth=1
	movl	$0, -40(%rbp)
.LBB4_43:                               # %for.cond112
                                        #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB4_46
# %bb.44:                               # %for.body115
                                        #   in Loop: Header=BB4_43 Depth=2
	movq	48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.45:                               # %for.inc120
                                        #   in Loop: Header=BB4_43 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_43
.LBB4_46:                               # %for.end122
                                        #   in Loop: Header=BB4_41 Depth=1
	jmp	.LBB4_47
.LBB4_47:                               # %for.inc123
                                        #   in Loop: Header=BB4_41 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_41
.LBB4_48:                               # %for.end125
	movl	$0, -36(%rbp)
.LBB4_49:                               # %for.cond126
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_51 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_56
# %bb.50:                               # %for.body129
                                        #   in Loop: Header=BB4_49 Depth=1
	movl	$0, -40(%rbp)
.LBB4_51:                               # %for.cond130
                                        #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB4_54
# %bb.52:                               # %for.body133
                                        #   in Loop: Header=BB4_51 Depth=2
	movq	56(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.53:                               # %for.inc138
                                        #   in Loop: Header=BB4_51 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_51
.LBB4_54:                               # %for.end140
                                        #   in Loop: Header=BB4_49 Depth=1
	jmp	.LBB4_55
.LBB4_55:                               # %for.inc141
                                        #   in Loop: Header=BB4_49 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_49
.LBB4_56:                               # %for.end143
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	init_array, .Lfunc_end4-init_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_3mm
	.type	kernel_3mm,@function
kernel_3mm:                             # @kernel_3mm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	56(%rbp), %rax
	movq	48(%rbp), %rax
	movq	40(%rbp), %rax
	movq	32(%rbp), %rax
	movq	24(%rbp), %rax
	movq	16(%rbp), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
                                        #       Child Loop BB5_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB5_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -40(%rbp)
.LBB5_3:                                # %for.cond1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_5 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB5_10
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB5_3 Depth=2
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -44(%rbp)
.LBB5_5:                                # %for.cond6
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB5_8
# %bb.6:                                # %for.body8
                                        #   in Loop: Header=BB5_5 Depth=3
	movq	16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_48(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_49(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-84(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-80(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_50(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movslq	-40(%rbp), %rcx
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_51(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-76(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-72(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_52(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-68(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-64(%rbp), %rcx                 # 8-byte Reload
                                        # kill: def $edx killed $eax
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movss	%xmm0, (%rax,%rcx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_5
.LBB5_8:                                # %for.end
                                        #   in Loop: Header=BB5_3 Depth=2
	jmp	.LBB5_9
.LBB5_9:                                # %for.inc21
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_3
.LBB5_10:                               # %for.end23
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_11
.LBB5_11:                               # %for.inc24
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_1
.LBB5_12:                               # %for.end26
	movl	$0, -36(%rbp)
.LBB5_13:                               # %for.cond27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_15 Depth 2
                                        #       Child Loop BB5_17 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB5_24
# %bb.14:                               # %for.body29
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$0, -40(%rbp)
.LBB5_15:                               # %for.cond30
                                        #   Parent Loop BB5_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB5_22
# %bb.16:                               # %for.body32
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -44(%rbp)
.LBB5_17:                               # %for.cond37
                                        #   Parent Loop BB5_13 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_20
# %bb.18:                               # %for.body39
                                        #   in Loop: Header=BB5_17 Depth=3
	movq	40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -124(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_53(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	48(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -120(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_54(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-124(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-120(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -112(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_55(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movslq	-40(%rbp), %rcx
	movq	%rcx, -104(%rbp)                # 8-byte Spill
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -116(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_56(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-116(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-112(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_57(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-108(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-104(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $edx killed $eax
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movss	%xmm0, (%rax,%rcx,4)
# %bb.19:                               # %for.inc54
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_17
.LBB5_20:                               # %for.end56
                                        #   in Loop: Header=BB5_15 Depth=2
	jmp	.LBB5_21
.LBB5_21:                               # %for.inc57
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_15
.LBB5_22:                               # %for.end59
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_23
.LBB5_23:                               # %for.inc60
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_13
.LBB5_24:                               # %for.end62
	movl	$0, -36(%rbp)
.LBB5_25:                               # %for.cond63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
                                        #       Child Loop BB5_29 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB5_36
# %bb.26:                               # %for.body65
                                        #   in Loop: Header=BB5_25 Depth=1
	movl	$0, -40(%rbp)
.LBB5_27:                               # %for.cond66
                                        #   Parent Loop BB5_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_29 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB5_34
# %bb.28:                               # %for.body68
                                        #   in Loop: Header=BB5_27 Depth=2
	movq	56(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -44(%rbp)
.LBB5_29:                               # %for.cond73
                                        #   Parent Loop BB5_25 Depth=1
                                        #     Parent Loop BB5_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB5_32
# %bb.30:                               # %for.body75
                                        #   in Loop: Header=BB5_29 Depth=3
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_58(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -160(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_59(%rip), %rsi
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
	leaq	.L__unnamed_60(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	56(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movslq	-40(%rbp), %rcx
	movq	%rcx, -144(%rbp)                # 8-byte Spill
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -156(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_61(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-156(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-152(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -148(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_62(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-148(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-144(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $edx killed $eax
	movq	-136(%rbp), %rax                # 8-byte Reload
	movss	%xmm0, (%rax,%rcx,4)
# %bb.31:                               # %for.inc90
                                        #   in Loop: Header=BB5_29 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_29
.LBB5_32:                               # %for.end92
                                        #   in Loop: Header=BB5_27 Depth=2
	jmp	.LBB5_33
.LBB5_33:                               # %for.inc93
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_27
.LBB5_34:                               # %for.end95
                                        #   in Loop: Header=BB5_25 Depth=1
	jmp	.LBB5_35
.LBB5_35:                               # %for.inc96
                                        #   in Loop: Header=BB5_25 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_25
.LBB5_36:                               # %for.end98
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	kernel_3mm, .Lfunc_end5-kernel_3mm
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function init_array.1
	.type	init_array.1,@function
init_array.1:                           # @init_array.1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	56(%rbp), %rax
	movq	48(%rbp), %rax
	movq	40(%rbp), %rax
	movq	32(%rbp), %rax
	movq	24(%rbp), %rax
	movq	16(%rbp), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -40(%rbp)
.LBB6_3:                                # %for.cond3
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB6_6
# %bb.4:                                # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-36(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-4(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_63(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	imull	$5, -4(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_64(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_65(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-44(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc10
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_1
.LBB6_8:                                # %for.end12
	movl	$0, -36(%rbp)
.LBB6_9:                                # %for.cond13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB6_16
# %bb.10:                               # %for.body16
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	$0, -40(%rbp)
.LBB6_11:                               # %for.cond17
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB6_14
# %bb.12:                               # %for.body20
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	addl	$2, %eax
	cltd
	idivl	-8(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_66(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	imull	$5, -8(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_67(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-64(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_68(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-56(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.13:                               # %for.inc33
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_11
.LBB6_14:                               # %for.end35
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_15
.LBB6_15:                               # %for.inc36
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_9
.LBB6_16:                               # %for.end38
	movl	$0, -36(%rbp)
.LBB6_17:                               # %for.cond39
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_19 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB6_24
# %bb.18:                               # %for.body42
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	$0, -40(%rbp)
.LBB6_19:                               # %for.cond43
                                        #   Parent Loop BB6_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB6_22
# %bb.20:                               # %for.body46
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	$3, %ecx
	imull	%ecx, %eax
	cltd
	idivl	-16(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_69(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	imull	$5, -16(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_70(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-76(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-72(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_71(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-68(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.21:                               # %for.inc58
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_19
.LBB6_22:                               # %for.end60
                                        #   in Loop: Header=BB6_17 Depth=1
	jmp	.LBB6_23
.LBB6_23:                               # %for.inc61
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_17
.LBB6_24:                               # %for.end63
	movl	$0, -36(%rbp)
.LBB6_25:                               # %for.cond64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_27 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB6_32
# %bb.26:                               # %for.body67
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	$0, -40(%rbp)
.LBB6_27:                               # %for.cond68
                                        #   Parent Loop BB6_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB6_30
# %bb.28:                               # %for.body71
                                        #   in Loop: Header=BB6_27 Depth=2
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	$2, %ecx
	imull	%ecx, %eax
	addl	$2, %eax
	cltd
	idivl	-12(%rbp)
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, -88(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_72(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	imull	$5, -12(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_73(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_36(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-88(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-84(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_74(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-80(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.29:                               # %for.inc84
                                        #   in Loop: Header=BB6_27 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_27
.LBB6_30:                               # %for.end86
                                        #   in Loop: Header=BB6_25 Depth=1
	jmp	.LBB6_31
.LBB6_31:                               # %for.inc87
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_25
.LBB6_32:                               # %for.end89
	movl	$0, -36(%rbp)
.LBB6_33:                               # %for.cond90
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_35 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_40
# %bb.34:                               # %for.body93
                                        #   in Loop: Header=BB6_33 Depth=1
	movl	$0, -40(%rbp)
.LBB6_35:                               # %for.cond94
                                        #   Parent Loop BB6_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB6_38
# %bb.36:                               # %for.body97
                                        #   in Loop: Header=BB6_35 Depth=2
	movq	40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.37:                               # %for.inc102
                                        #   in Loop: Header=BB6_35 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_35
.LBB6_38:                               # %for.end104
                                        #   in Loop: Header=BB6_33 Depth=1
	jmp	.LBB6_39
.LBB6_39:                               # %for.inc105
                                        #   in Loop: Header=BB6_33 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_33
.LBB6_40:                               # %for.end107
	movl	$0, -36(%rbp)
.LBB6_41:                               # %for.cond108
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_43 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB6_48
# %bb.42:                               # %for.body111
                                        #   in Loop: Header=BB6_41 Depth=1
	movl	$0, -40(%rbp)
.LBB6_43:                               # %for.cond112
                                        #   Parent Loop BB6_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB6_46
# %bb.44:                               # %for.body115
                                        #   in Loop: Header=BB6_43 Depth=2
	movq	48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.45:                               # %for.inc120
                                        #   in Loop: Header=BB6_43 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_43
.LBB6_46:                               # %for.end122
                                        #   in Loop: Header=BB6_41 Depth=1
	jmp	.LBB6_47
.LBB6_47:                               # %for.inc123
                                        #   in Loop: Header=BB6_41 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_41
.LBB6_48:                               # %for.end125
	movl	$0, -36(%rbp)
.LBB6_49:                               # %for.cond126
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_51 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB6_56
# %bb.50:                               # %for.body129
                                        #   in Loop: Header=BB6_49 Depth=1
	movl	$0, -40(%rbp)
.LBB6_51:                               # %for.cond130
                                        #   Parent Loop BB6_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB6_54
# %bb.52:                               # %for.body133
                                        #   in Loop: Header=BB6_51 Depth=2
	movq	56(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.53:                               # %for.inc138
                                        #   in Loop: Header=BB6_51 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_51
.LBB6_54:                               # %for.end140
                                        #   in Loop: Header=BB6_49 Depth=1
	jmp	.LBB6_55
.LBB6_55:                               # %for.inc141
                                        #   in Loop: Header=BB6_49 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_49
.LBB6_56:                               # %for.end143
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	init_array.1, .Lfunc_end6-init_array.1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_3mm.2
	.type	kernel_3mm.2,@function
kernel_3mm.2:                           # @kernel_3mm.2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	56(%rbp), %rax
	movq	48(%rbp), %rax
	movq	40(%rbp), %rax
	movq	32(%rbp), %rax
	movq	24(%rbp), %rax
	movq	16(%rbp), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
                                        #       Child Loop BB7_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB7_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -40(%rbp)
.LBB7_3:                                # %for.cond1
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_5 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB7_10
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB7_3 Depth=2
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -44(%rbp)
.LBB7_5:                                # %for.cond6
                                        #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB7_8
# %bb.6:                                # %for.body8
                                        #   in Loop: Header=BB7_5 Depth=3
	movq	16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_75(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_76(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-84(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-80(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -72(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_77(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movslq	-40(%rbp), %rcx
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_78(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-76(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-72(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_79(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-68(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-64(%rbp), %rcx                 # 8-byte Reload
                                        # kill: def $edx killed $eax
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movss	%xmm0, (%rax,%rcx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB7_5 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_5
.LBB7_8:                                # %for.end
                                        #   in Loop: Header=BB7_3 Depth=2
	jmp	.LBB7_9
.LBB7_9:                                # %for.inc21
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_3
.LBB7_10:                               # %for.end23
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_11
.LBB7_11:                               # %for.inc24
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB7_1
.LBB7_12:                               # %for.end26
	movl	$0, -36(%rbp)
.LBB7_13:                               # %for.cond27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
                                        #       Child Loop BB7_17 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB7_24
# %bb.14:                               # %for.body29
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	$0, -40(%rbp)
.LBB7_15:                               # %for.cond30
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_17 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB7_22
# %bb.16:                               # %for.body32
                                        #   in Loop: Header=BB7_15 Depth=2
	movq	32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -44(%rbp)
.LBB7_17:                               # %for.cond37
                                        #   Parent Loop BB7_13 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB7_20
# %bb.18:                               # %for.body39
                                        #   in Loop: Header=BB7_17 Depth=3
	movq	40(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -124(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_80(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	48(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -120(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_81(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-124(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-120(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -112(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_82(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movslq	-40(%rbp), %rcx
	movq	%rcx, -104(%rbp)                # 8-byte Spill
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -116(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_83(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-116(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-112(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_84(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-108(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-104(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $edx killed $eax
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movss	%xmm0, (%rax,%rcx,4)
# %bb.19:                               # %for.inc54
                                        #   in Loop: Header=BB7_17 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_17
.LBB7_20:                               # %for.end56
                                        #   in Loop: Header=BB7_15 Depth=2
	jmp	.LBB7_21
.LBB7_21:                               # %for.inc57
                                        #   in Loop: Header=BB7_15 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_15
.LBB7_22:                               # %for.end59
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_23
.LBB7_23:                               # %for.inc60
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB7_13
.LBB7_24:                               # %for.end62
	movl	$0, -36(%rbp)
.LBB7_25:                               # %for.cond63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_27 Depth 2
                                        #       Child Loop BB7_29 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB7_36
# %bb.26:                               # %for.body65
                                        #   in Loop: Header=BB7_25 Depth=1
	movl	$0, -40(%rbp)
.LBB7_27:                               # %for.cond66
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_29 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB7_34
# %bb.28:                               # %for.body68
                                        #   in Loop: Header=BB7_27 Depth=2
	movq	56(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -44(%rbp)
.LBB7_29:                               # %for.cond73
                                        #   Parent Loop BB7_25 Depth=1
                                        #     Parent Loop BB7_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB7_32
# %bb.30:                               # %for.body75
                                        #   in Loop: Header=BB7_29 Depth=3
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_85(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -160(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_86(%rip), %rsi
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
	leaq	.L__unnamed_87(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movq	56(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movslq	-40(%rbp), %rcx
	movq	%rcx, -144(%rbp)                # 8-byte Spill
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -156(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_88(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-156(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-152(%rbp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -148(%rbp)               # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movq	PrintfFormatStr@GOTPCREL(%rip), %rdi
	leaq	.L__unnamed_89(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	.L__unnamed_21(%rip), %rcx
	movb	$1, %al
	callq	printf@PLT
	movss	-148(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-144(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $edx killed $eax
	movq	-136(%rbp), %rax                # 8-byte Reload
	movss	%xmm0, (%rax,%rcx,4)
# %bb.31:                               # %for.inc90
                                        #   in Loop: Header=BB7_29 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_29
.LBB7_32:                               # %for.end92
                                        #   in Loop: Header=BB7_27 Depth=2
	jmp	.LBB7_33
.LBB7_33:                               # %for.inc93
                                        #   in Loop: Header=BB7_27 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_27
.LBB7_34:                               # %for.end95
                                        #   in Loop: Header=BB7_25 Depth=1
	jmp	.LBB7_35
.LBB7_35:                               # %for.inc96
                                        #   in Loop: Header=BB7_25 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB7_25
.LBB7_36:                               # %for.end98
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	kernel_3mm.2, .Lfunc_end7-kernel_3mm.2
	.cfi_endproc
                                        # -- End function
	.type	G_float,@object                 # @G_float
	.bss
	.globl	G_float
	.p2align	4
G_float:
	.zero	288
	.size	G_float, 288

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

	.type	.L__unnamed_90,@object          # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_90:
	.asciz	"Float_half"
	.size	.L__unnamed_90, 11

	.type	.L__unnamed_91,@object          # @1
.L__unnamed_91:
	.asciz	"Float_bfloat"
	.size	.L__unnamed_91, 13

	.type	.L__unnamed_2,@object           # @2
.L__unnamed_2:
	.asciz	"Float_float"
	.size	.L__unnamed_2, 12

	.type	.L__unnamed_92,@object          # @3
.L__unnamed_92:
	.asciz	"Float_double"
	.size	.L__unnamed_92, 13

	.type	.L__unnamed_93,@object          # @4
.L__unnamed_93:
	.asciz	"Float_x86_fp80"
	.size	.L__unnamed_93, 15

	.type	.L__unnamed_94,@object          # @5
.L__unnamed_94:
	.asciz	"Float_fp128"
	.size	.L__unnamed_94, 12

	.type	.L__unnamed_95,@object          # @6
.L__unnamed_95:
	.asciz	"Float_ppc_fp128"
	.size	.L__unnamed_95, 16

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

	.ident	"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym init_array.1
	.addrsig_sym kernel_3mm.2
	.addrsig_sym printf
	.addrsig_sym G_float
	.addrsig_sym PrintfFormatStr
	.addrsig_sym PrintfTimerStr

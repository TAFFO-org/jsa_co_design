	.text
	.file	"gemver.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function sqrtf_PB
.LCPI0_0:
	.long	0x41200000                      # float 10
.LCPI0_1:
	.long	0x3a83126f                      # float 0.00100000005
	.text
	.globl	sqrtf_PB
	.p2align	4, 0x90
	.type	sqrtf_PB,@function
sqrtf_PB:                               # @sqrtf_PB
	.cfi_startproc
# %bb.0:                                # %entry
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$72, %esp
	calll	.L0$pb
.L0$pb:
	popl	%eax
.Ltmp0:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp0-.L0$pb), %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	flds	8(%ebp)
	fsts	-8(%ebp)                        # 4-byte Folded Spill
	flds	.LCPI0_0@GOTOFF(%eax)
	fdivr	%st(1), %st
	fstps	-4(%ebp)                        # 4-byte Folded Spill
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jne	.LBB0_2
	jp	.LBB0_2
	jmp	.LBB0_1
.LBB0_1:                                # %if.then
	fldz
	fstps	-16(%ebp)                       # 4-byte Folded Spill
	jmp	.LBB0_14
.LBB0_2:                                # %if.else
	flds	-4(%ebp)                        # 4-byte Folded Reload
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	%ecx, -28(%ebp)                 # 4-byte Spill
	fstps	-24(%ebp)                       # 4-byte Folded Spill
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%ebp), %eax                 # 4-byte Reload
	flds	-24(%ebp)                       # 4-byte Folded Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	%ecx, -40(%ebp)                 # 4-byte Spill
	fstps	-36(%ebp)                       # 4-byte Folded Spill
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	cmpl	$20, %eax
	jge	.LBB0_13
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%ebp), %eax                 # 4-byte Reload
	flds	-36(%ebp)                       # 4-byte Folded Reload
	cmpl	$0, %eax
	fstps	-48(%ebp)                       # 4-byte Folded Spill
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jne	.LBB0_11
# %bb.5:                                # %if.then2
                                        #   in Loop: Header=BB0_3 Depth=1
	flds	-8(%ebp)                        # 4-byte Folded Reload
	flds	-36(%ebp)                       # 4-byte Folded Reload
	fld	%st(0)
	fmul	%st(1), %st
	fsubr	%st(2), %st
	fld	%st(1)
	fadd	%st(2), %st
	fdivrp	%st, %st(1)
	faddp	%st, %st(1)
	fsts	-56(%ebp)                       # 4-byte Folded Spill
	fmul	%st, %st(0)
	fsubrp	%st, %st(1)
	fsts	-52(%ebp)                       # 4-byte Folded Spill
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jb	.LBB0_7
	jmp	.LBB0_6
.LBB0_6:                                # %cond.true
                                        #   in Loop: Header=BB0_3 Depth=1
	flds	-52(%ebp)                       # 4-byte Folded Reload
	fstps	-60(%ebp)                       # 4-byte Folded Spill
	jmp	.LBB0_8
.LBB0_7:                                # %cond.false
                                        #   in Loop: Header=BB0_3 Depth=1
	flds	-52(%ebp)                       # 4-byte Folded Reload
	fchs
	fstps	-60(%ebp)                       # 4-byte Folded Spill
.LBB0_8:                                # %cond.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-12(%ebp), %eax                 # 4-byte Reload
	flds	-60(%ebp)                       # 4-byte Folded Reload
	flds	.LCPI0_1@GOTOFF(%eax)
	fucompp
	fnstsw	%ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	jb	.LBB0_10
	jmp	.LBB0_9
.LBB0_9:                                # %if.then9
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	jmp	.LBB0_10
.LBB0_10:                               # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	flds	-56(%ebp)                       # 4-byte Folded Reload
	movl	-64(%ebp), %eax                 # 4-byte Reload
	fstps	-48(%ebp)                       # 4-byte Folded Spill
	movl	%eax, -44(%ebp)                 # 4-byte Spill
.LBB0_11:                               # %if.end10
                                        #   in Loop: Header=BB0_3 Depth=1
	flds	-48(%ebp)                       # 4-byte Folded Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	fstps	-68(%ebp)                       # 4-byte Folded Spill
# %bb.12:                               # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-72(%ebp), %eax                 # 4-byte Reload
	flds	-68(%ebp)                       # 4-byte Folded Reload
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	addl	$1, %ecx
	movl	%ecx, -28(%ebp)                 # 4-byte Spill
	fstps	-24(%ebp)                       # 4-byte Folded Spill
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_13:                               # %for.end
	flds	-36(%ebp)                       # 4-byte Folded Reload
	fstps	-16(%ebp)                       # 4-byte Folded Spill
	jmp	.LBB0_14
.LBB0_14:                               # %if.end11
	flds	-16(%ebp)                       # 4-byte Folded Reload
	addl	$72, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
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
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
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
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end2:
	.size	timer_stop, .Lfunc_end2-timer_stop
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function main
.LCPI3_0:
	.long	0x4e800000                      # float 1.07374182E+9
.LCPI3_1:
	.long	0x4d000000                      # float 134217728
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$2396, %esp                     # imm = 0x95C
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L3$pb
.L3$pb:
	popl	%eax
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L3$pb), %eax
	movl	%eax, -2296(%ebp)               # 4-byte Spill
	leal	-1620(%ebp), %eax
	movl	%eax, -2336(%ebp)               # 4-byte Spill
	leal	-1700(%ebp), %eax
	movl	%eax, -2332(%ebp)               # 4-byte Spill
	leal	-1780(%ebp), %eax
	movl	%eax, -2328(%ebp)               # 4-byte Spill
	leal	-1860(%ebp), %ebx
	leal	-1940(%ebp), %edi
	leal	-2020(%ebp), %esi
	leal	-2100(%ebp), %edx
	leal	-2180(%ebp), %ecx
	leal	-2260(%ebp), %eax
	movl	%eax, -2324(%ebp)               # 4-byte Spill
	leal	-16(%ebp), %eax
	movl	%eax, -2344(%ebp)               # 4-byte Spill
	leal	-20(%ebp), %eax
	movl	%eax, -2340(%ebp)               # 4-byte Spill
	movl	-2344(%ebp), %eax               # 4-byte Reload
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	-2340(%ebp), %eax               # 4-byte Reload
	movl	%eax, 8(%esp)
	movl	-2336(%ebp), %eax               # 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-2332(%ebp), %eax               # 4-byte Reload
	movl	%eax, 16(%esp)
	movl	-2328(%ebp), %eax               # 4-byte Reload
	movl	%eax, 20(%esp)
	movl	-2324(%ebp), %eax               # 4-byte Reload
	movl	%ebx, 24(%esp)
	movl	-2296(%ebp), %ebx               # 4-byte Reload
	movl	%edi, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, 44(%esp)
	calll	init_array.2_fixp
	movl	-2296(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-16(%ebp), %eax
	movl	%eax, -2320(%ebp)               # 4-byte Spill
	movl	-20(%ebp), %eax
	movl	%eax, -2316(%ebp)               # 4-byte Spill
	leal	-1620(%ebp), %eax
	movl	%eax, -2312(%ebp)               # 4-byte Spill
	leal	-1700(%ebp), %eax
	movl	%eax, -2308(%ebp)               # 4-byte Spill
	leal	-1780(%ebp), %eax
	movl	%eax, -2304(%ebp)               # 4-byte Spill
	leal	-1860(%ebp), %ebx
	leal	-1940(%ebp), %edi
	leal	-2020(%ebp), %esi
	leal	-2100(%ebp), %edx
	leal	-2180(%ebp), %ecx
	leal	-2260(%ebp), %eax
	movl	%eax, -2300(%ebp)               # 4-byte Spill
	movl	-2320(%ebp), %eax               # 4-byte Reload
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	-2316(%ebp), %eax               # 4-byte Reload
	movl	%eax, 8(%esp)
	movl	-2312(%ebp), %eax               # 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-2308(%ebp), %eax               # 4-byte Reload
	movl	%eax, 16(%esp)
	movl	-2304(%ebp), %eax               # 4-byte Reload
	movl	%eax, 20(%esp)
	movl	-2300(%ebp), %eax               # 4-byte Reload
	movl	%ebx, 24(%esp)
	movl	-2296(%ebp), %ebx               # 4-byte Reload
	movl	%edi, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, 44(%esp)
	calll	kernel_gemver.1_fixp
	movl	-2296(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -2292(%ebp)               # 4-byte Spill
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-2292(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2348(%ebp)               # 4-byte Spill
	cmpl	$20, %eax
	jge	.LBB3_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-2296(%ebp), %eax               # 4-byte Reload
	movl	-2348(%ebp), %ecx               # 4-byte Reload
	movl	-2100(%ebp,%ecx,4), %edx
	movl	%edx, -2280(%ebp)
	movl	$0, -2276(%ebp)
	fildll	-2280(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	fstps	x_float@GOTOFF(%eax,%ecx,4)
	movl	-2020(%ebp,%ecx,4), %edx
	movl	%edx, -2272(%ebp)
	movl	$0, -2268(%ebp)
	fildll	-2272(%ebp)
	flds	.LCPI3_1@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	fstps	w_float@GOTOFF(%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -2352(%ebp)               # 4-byte Spill
.LBB3_3:                                # %for.cond32
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2352(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2356(%ebp)               # 4-byte Spill
	cmpl	$20, %eax
	jge	.LBB3_6
# %bb.4:                                # %for.body34
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-2356(%ebp), %ecx               # 4-byte Reload
	movl	-2296(%ebp), %eax               # 4-byte Reload
	movl	-2348(%ebp), %edx               # 4-byte Reload
	shll	$4, %edx
	leal	(%edx,%edx,4), %edx
	leal	-1620(%ebp,%edx), %esi
	movl	(%esi,%ecx,4), %esi
	movl	%esi, -2288(%ebp)
	movl	$0, -2284(%ebp)
	fildll	-2288(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	leal	A_float@GOTOFF(%eax,%edx), %eax
	fstps	(%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-2356(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2352(%ebp)               # 4-byte Spill
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc39
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-2348(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2292(%ebp)               # 4-byte Spill
	jmp	.LBB3_1
.LBB3_8:                                # %for.end41
	movl	-2296(%ebp), %ebx               # 4-byte Reload
	leal	w_float@GOTOFF(%ebx), %edx
	leal	x_float@GOTOFF(%ebx), %ecx
	leal	A_float@GOTOFF(%ebx), %eax
	movl	$20, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 12(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$2396, %esp                     # imm = 0x95C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function print_array
	.type	print_array,@function
print_array:                            # @print_array
	.cfi_startproc
# %bb.0:                                # %entry
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%esi
	subl	$80, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	calll	.L4$pb
.L4$pb:
	popl	%eax
.Ltmp2:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp2-.L4$pb), %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	jmp	.LBB4_1
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-12(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %for.cond1
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_8
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-44(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %edx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	addl	%ecx, %eax
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.14@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_6:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	-44(%ebp), %edx                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-36(%ebp), %esi                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	leal	(%esi,%esi,4), %esi
	shll	$4, %esi
	addl	%esi, %eax
	flds	(%eax,%edx,4)
	leal	.L.str.15@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.15@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	fprintf@PLT
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB4_3
.LBB4_8:                                # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_9
.LBB4_9:                                # %for.inc7
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	jmp	.LBB4_1
.LBB4_10:                               # %for.end9
	xorl	%eax, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB4_11
.LBB4_11:                               # %for.cond10
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_16
# %bb.12:                               # %for.body13
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_14
# %bb.13:                               # %if.then17
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.14@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_14:                               # %if.end19
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	flds	(%eax,%edx,4)
	leal	.L.str.15@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.15@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	fprintf@PLT
# %bb.15:                               # %for.inc23
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB4_11
.LBB4_16:                               # %for.end25
	xorl	%eax, %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jmp	.LBB4_17
.LBB4_17:                               # %for.cond26
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_22
# %bb.18:                               # %for.body29
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_20
# %bb.19:                               # %if.then33
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.14@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_20:                               # %if.end35
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %eax                 # 4-byte Reload
	movl	-60(%ebp), %edx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	flds	(%eax,%edx,4)
	leal	.L.str.15@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.15@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	fprintf@PLT
# %bb.21:                               # %for.inc39
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-60(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jmp	.LBB4_17
.LBB4_22:                               # %for.end41
	addl	$80, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end4:
	.size	print_array, .Lfunc_end4-print_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_gemver.1_fixp
	.type	kernel_gemver.1_fixp,@function
kernel_gemver.1_fixp:                   # @kernel_gemver.1_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$116, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	52(%ebp), %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	movl	48(%ebp), %eax
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	movl	44(%ebp), %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	movl	40(%ebp), %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	movl	36(%ebp), %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	movl	32(%ebp), %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	movl	28(%ebp), %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	movl	24(%ebp), %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %for.cond1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-72(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-76(%ebp), %ecx                 # 4-byte Reload
	movl	-32(%ebp), %edi                 # 4-byte Reload
	movl	-68(%ebp), %esi                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	imull	$80, %esi, %ebx
	addl	%ebx, %edi
	movl	(%edi,%ecx,4), %edi
	movl	(%eax,%esi,4), %eax
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %eax
	sarl	$1, %edx
	imull	%edx
	movl	%eax, %ebx
	movl	-44(%ebp), %eax                 # 4-byte Reload
	shrdl	$29, %edx, %ebx
	movl	-48(%ebp), %edx                 # 4-byte Reload
	shll	$1, %ebx
	addl	%ebx, %edi
	movl	%edi, -80(%ebp)                 # 4-byte Spill
	movl	(%eax,%esi,4), %eax
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %eax
	sarl	$1, %edx
	imull	%edx
	movl	%eax, %edi
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %ebx
	movl	-80(%ebp), %edx                 # 4-byte Reload
	shrdl	$29, %ebx, %edi
	shll	$1, %edi
	addl	%edi, %edx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-76(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc13
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-68(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_8:                                # %for.end15
	xorl	%eax, %eax
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jmp	.LBB5_9
.LBB5_9:                                # %for.cond16
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-84(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_16
# %bb.10:                               # %for.body18
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	jmp	.LBB5_11
.LBB5_11:                               # %for.cond19
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-92(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_14
# %bb.12:                               # %for.body21
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-56(%ebp), %edi                 # 4-byte Reload
	movl	-88(%ebp), %ecx                 # 4-byte Reload
	movl	-96(%ebp), %esi                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-32(%ebp), %edx                 # 4-byte Reload
	movl	(%edi,%ecx,4), %edi
	movl	%edi, -100(%ebp)                # 4-byte Spill
	imull	$80, %esi, %edi
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	imull	%edx
	movl	%edx, %edi
	movl	-60(%ebp), %edx                 # 4-byte Reload
	shrdl	$29, %edi, %eax
	shll	$1, %eax
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-100(%ebp), %edx                # 4-byte Reload
	shrdl	$29, %edi, %esi
	shll	$1, %esi
	addl	%esi, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.13:                               # %for.inc30
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-96(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	jmp	.LBB5_11
.LBB5_14:                               # %for.end32
                                        #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_15
.LBB5_15:                               # %for.inc33
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-88(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jmp	.LBB5_9
.LBB5_16:                               # %for.end35
	xorl	%eax, %eax
	movl	%eax, -104(%ebp)                # 4-byte Spill
	jmp	.LBB5_17
.LBB5_17:                               # %for.cond36
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-104(%ebp), %eax                # 4-byte Reload
	movl	%eax, -108(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_20
# %bb.18:                               # %for.body38
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	-108(%ebp), %ecx                # 4-byte Reload
	movl	-64(%ebp), %esi                 # 4-byte Reload
	movl	(%eax,%ecx,4), %edx
	movl	(%esi,%ecx,4), %esi
	shrl	$1, %esi
	addl	%esi, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.19:                               # %for.inc43
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-108(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -104(%ebp)                # 4-byte Spill
	jmp	.LBB5_17
.LBB5_20:                               # %for.end45
	xorl	%eax, %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB5_21
.LBB5_21:                               # %for.cond46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_23 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-112(%ebp), %eax                # 4-byte Reload
	movl	%eax, -116(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_28
# %bb.22:                               # %for.body48
                                        #   in Loop: Header=BB5_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB5_23
.LBB5_23:                               # %for.cond49
                                        #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-120(%ebp), %eax                # 4-byte Reload
	movl	%eax, -124(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_26
# %bb.24:                               # %for.body51
                                        #   in Loop: Header=BB5_23 Depth=2
	movl	-52(%ebp), %edi                 # 4-byte Reload
	movl	-116(%ebp), %ecx                # 4-byte Reload
	movl	-124(%ebp), %esi                # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-32(%ebp), %edx                 # 4-byte Reload
	movl	(%edi,%ecx,4), %edi
	movl	%edi, -128(%ebp)                # 4-byte Spill
	imull	$80, %ecx, %edi
	addl	%edi, %edx
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	imull	%edx
	movl	%edx, %edi
	movl	-56(%ebp), %edx                 # 4-byte Reload
	shrdl	$29, %edi, %eax
	shll	$1, %eax
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-128(%ebp), %edx                # 4-byte Reload
	shrdl	$29, %edi, %esi
	shll	$1, %esi
	shrl	$3, %esi
	addl	%esi, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.25:                               # %for.inc60
                                        #   in Loop: Header=BB5_23 Depth=2
	movl	-124(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB5_23
.LBB5_26:                               # %for.end62
                                        #   in Loop: Header=BB5_21 Depth=1
	jmp	.LBB5_27
.LBB5_27:                               # %for.inc63
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-116(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB5_21
.LBB5_28:                               # %for.end65
	addl	$116, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	kernel_gemver.1_fixp, .Lfunc_end5-kernel_gemver.1_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function init_array.2_fixp
	.type	init_array.2_fixp,@function
init_array.2_fixp:                      # @init_array.2_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$428, %esp                      # imm = 0x1AC
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L6$pb
.L6$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L6$pb), %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	movl	52(%ebp), %eax
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	movl	48(%ebp), %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	movl	44(%ebp), %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	movl	40(%ebp), %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	movl	36(%ebp), %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	movl	32(%ebp), %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	movl	28(%ebp), %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	movl	24(%ebp), %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	movl	$1610612736, (%edx)             # imm = 0x60000000
	movl	$1288490240, (%ecx)             # imm = 0x4CCCCD00
	shll	$27, %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	shll	$27, %edx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -88(%ebp)                 # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -96(%ebp)                 # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -92(%ebp)                 # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-96(%ebp), %ebx                 # 4-byte Reload
	movl	-92(%ebp), %ecx                 # 4-byte Reload
	movl	%eax, %edi
	movl	-88(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -84(%ebp)                 # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-84(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -77(%ebp)                  # 1-byte Spill
	calll	__divdi3@PLT
	movb	-77(%ebp), %cl                  # 1-byte Reload
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	jne	.LBB6_10
# %bb.9:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -72(%ebp)                 # 4-byte Spill
.LBB6_10:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-72(%ebp), %esi                 # 4-byte Reload
	shll	$5, %esi
	movl	%esi, (%eax,%edx,4)
	addl	$1, %edx
	shll	$27, %edx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -116(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -124(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -120(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-124(%ebp), %ebx                # 4-byte Reload
	movl	-120(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-116(%ebp), %eax                # 4-byte Reload
	movl	%edi, -112(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-112(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -105(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-105(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -104(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -100(%ebp)                # 4-byte Spill
	jne	.LBB6_12
# %bb.11:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-104(%ebp), %eax                # 4-byte Reload
	movl	%eax, -100(%ebp)                # 4-byte Spill
.LBB6_12:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-100(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	shrl	$1, %edx
	movl	$2, %ecx
	shll	$29, %ecx
	movl	%ecx, -144(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$29, %ecx
	movl	%ecx, -152(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$29, %edx, %ecx
	movl	%ecx, -148(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-152(%ebp), %ebx                # 4-byte Reload
	movl	-148(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-144(%ebp), %eax                # 4-byte Reload
	movl	%edi, -140(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-140(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -133(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-133(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -132(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -128(%ebp)                # 4-byte Spill
	jne	.LBB6_14
# %bb.13:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-132(%ebp), %eax                # 4-byte Reload
	movl	%eax, -128(%ebp)                # 4-byte Spill
.LBB6_14:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	-128(%ebp), %esi                # 4-byte Reload
	shll	$1, %esi
	shll	$1, %esi
	movl	%esi, (%eax,%edx,4)
	addl	$1, %edx
	shll	$27, %edx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -172(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -180(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -176(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-180(%ebp), %ebx                # 4-byte Reload
	movl	-176(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-172(%ebp), %eax                # 4-byte Reload
	movl	%edi, -168(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-168(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -161(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-161(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -160(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -156(%ebp)                # 4-byte Spill
	jne	.LBB6_16
# %bb.15:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-160(%ebp), %eax                # 4-byte Reload
	movl	%eax, -156(%ebp)                # 4-byte Spill
.LBB6_16:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-156(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	shrl	$1, %edx
	movl	$4, %ecx
	shll	$28, %ecx
	movl	%ecx, -200(%ebp)                # 4-byte Spill
	sarl	$1, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$28, %ecx
	movl	%ecx, -208(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$28, %edx, %ecx
	movl	%ecx, -204(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-208(%ebp), %ebx                # 4-byte Reload
	movl	-204(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-200(%ebp), %eax                # 4-byte Reload
	movl	%edi, -196(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-196(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -189(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-189(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -188(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -184(%ebp)                # 4-byte Spill
	jne	.LBB6_18
# %bb.17:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-188(%ebp), %eax                # 4-byte Reload
	movl	%eax, -184(%ebp)                # 4-byte Spill
.LBB6_18:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-184(%ebp), %esi                # 4-byte Reload
	shll	$2, %esi
	shll	$1, %esi
	movl	%esi, (%eax,%edx,4)
	addl	$1, %edx
	shll	$27, %edx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -228(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -236(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -232(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-236(%ebp), %ebx                # 4-byte Reload
	movl	-232(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-228(%ebp), %eax                # 4-byte Reload
	movl	%edi, -224(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-224(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -217(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-217(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -216(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -212(%ebp)                # 4-byte Spill
	jne	.LBB6_20
# %bb.19:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-216(%ebp), %eax                # 4-byte Reload
	movl	%eax, -212(%ebp)                # 4-byte Spill
.LBB6_20:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-212(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	shrl	$1, %edx
	movl	$6, %ecx
	shll	$28, %ecx
	movl	%ecx, -256(%ebp)                # 4-byte Spill
	sarl	$1, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$28, %ecx
	movl	%ecx, -264(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$28, %edx, %ecx
	movl	%ecx, -260(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-264(%ebp), %ebx                # 4-byte Reload
	movl	-260(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-256(%ebp), %eax                # 4-byte Reload
	movl	%edi, -252(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-252(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -245(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-245(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -244(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -240(%ebp)                # 4-byte Spill
	jne	.LBB6_22
# %bb.21:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-244(%ebp), %eax                # 4-byte Reload
	movl	%eax, -240(%ebp)                # 4-byte Spill
.LBB6_22:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	-240(%ebp), %esi                # 4-byte Reload
	shll	$2, %esi
	shll	$1, %esi
	movl	%esi, (%eax,%edx,4)
	addl	$1, %edx
	shll	$27, %edx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -284(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -292(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -288(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-292(%ebp), %ebx                # 4-byte Reload
	movl	-288(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-284(%ebp), %eax                # 4-byte Reload
	movl	%edi, -280(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-280(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -273(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-273(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -272(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -268(%ebp)                # 4-byte Spill
	jne	.LBB6_24
# %bb.23:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-272(%ebp), %eax                # 4-byte Reload
	movl	%eax, -268(%ebp)                # 4-byte Spill
.LBB6_24:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-268(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	shrl	$1, %edx
	movl	$8, %ecx
	shll	$27, %ecx
	movl	%ecx, -312(%ebp)                # 4-byte Spill
	sarl	$2, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$27, %ecx
	movl	%ecx, -320(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$27, %edx, %ecx
	movl	%ecx, -316(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-320(%ebp), %ebx                # 4-byte Reload
	movl	-316(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-312(%ebp), %eax                # 4-byte Reload
	movl	%edi, -308(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-308(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -301(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-301(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -300(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -296(%ebp)                # 4-byte Spill
	jne	.LBB6_26
# %bb.25:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-300(%ebp), %eax                # 4-byte Reload
	movl	%eax, -296(%ebp)                # 4-byte Spill
.LBB6_26:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	-296(%ebp), %esi                # 4-byte Reload
	shll	$3, %esi
	shll	$1, %esi
	movl	%esi, (%eax,%edx,4)
	addl	$1, %edx
	shll	$27, %edx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -340(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -348(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -344(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-348(%ebp), %ebx                # 4-byte Reload
	movl	-344(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-340(%ebp), %eax                # 4-byte Reload
	movl	%edi, -336(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-336(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -329(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-329(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -328(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -324(%ebp)                # 4-byte Spill
	jne	.LBB6_28
# %bb.27:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-328(%ebp), %eax                # 4-byte Reload
	movl	%eax, -324(%ebp)                # 4-byte Spill
.LBB6_28:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-324(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	shrl	$1, %edx
	movl	$9, %ecx
	shll	$27, %ecx
	movl	%ecx, -368(%ebp)                # 4-byte Spill
	sarl	$2, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$27, %ecx
	movl	%ecx, -376(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$27, %edx, %ecx
	movl	%ecx, -372(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-376(%ebp), %ebx                # 4-byte Reload
	movl	-372(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-368(%ebp), %eax                # 4-byte Reload
	movl	%edi, -364(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-364(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -357(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-357(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -356(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -352(%ebp)                # 4-byte Spill
	jne	.LBB6_30
# %bb.29:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-356(%ebp), %eax                # 4-byte Reload
	movl	%eax, -352(%ebp)                # 4-byte Spill
.LBB6_30:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-68(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	movl	-60(%ebp), %esi                 # 4-byte Reload
	movl	-352(%ebp), %edi                # 4-byte Reload
	shll	$3, %edi
	shll	$1, %edi
	movl	%edi, (%esi,%ecx,4)
	movl	$0, (%edx,%ecx,4)
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -380(%ebp)                # 4-byte Spill
.LBB6_3:                                # %for.cond42
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-380(%ebp), %eax                # 4-byte Reload
	movl	%eax, -384(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_6
# %bb.4:                                # %for.body45
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-384(%ebp), %edx                # 4-byte Reload
	movl	-68(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	cltd
	idivl	%ecx
	shll	$27, %edx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -404(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -412(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -408(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-412(%ebp), %ebx                # 4-byte Reload
	movl	-408(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-404(%ebp), %eax                # 4-byte Reload
	movl	%edi, -400(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-400(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -393(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-393(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -392(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -388(%ebp)                # 4-byte Spill
	jne	.LBB6_32
# %bb.31:                               # %for.body45
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-392(%ebp), %eax                # 4-byte Reload
	movl	%eax, -388(%ebp)                # 4-byte Spill
.LBB6_32:                               # %for.body45
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-384(%ebp), %ecx                # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-68(%ebp), %esi                 # 4-byte Reload
	movl	-388(%ebp), %edx                # 4-byte Reload
	shll	$5, %edx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	shrl	$1, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-384(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -380(%ebp)                # 4-byte Spill
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc51
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-68(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB6_1
.LBB6_8:                                # %for.end53
	addl	$428, %esp                      # imm = 0x1AC
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end6:
	.size	init_array.2_fixp, .Lfunc_end6-init_array.2_fixp
	.cfi_endproc
                                        # -- End function
	.type	x_float,@object                 # @x_float
	.bss
	.globl	x_float
	.p2align	2
x_float:
	.zero	80
	.size	x_float, 80

	.type	w_float,@object                 # @w_float
	.globl	w_float
	.p2align	2
w_float:
	.zero	80
	.size	w_float, 80

	.type	A_float,@object                 # @A_float
	.globl	A_float
	.p2align	2
A_float:
	.zero	1600
	.size	A_float, 1600

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"\n"
	.size	.L.str.14, 2

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%0.16f "
	.size	.L.str.15, 8

	.ident	"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym print_array
	.addrsig_sym fprintf
	.addrsig_sym kernel_gemver.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym x_float
	.addrsig_sym w_float
	.addrsig_sym A_float
	.addrsig_sym stderr

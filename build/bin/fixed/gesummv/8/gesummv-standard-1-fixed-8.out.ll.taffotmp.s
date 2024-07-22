	.text
	.file	"gesummv.c"
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
	.long	0x4d800000                      # float 268435456
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
	subl	$2316, %esp                     # imm = 0x90C
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L3$pb
.L3$pb:
	popl	%eax
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L3$pb), %eax
	movl	%eax, -2280(%ebp)               # 4-byte Spill
	leal	-1044(%ebp), %edi
	leal	-2068(%ebp), %esi
	leal	-2196(%ebp), %edx
	leal	-2132(%ebp), %ecx
	leal	-2260(%ebp), %eax
	movl	%eax, -2292(%ebp)               # 4-byte Spill
	leal	-16(%ebp), %eax
	leal	-20(%ebp), %ebx
	movl	$16, (%esp)
	movl	%eax, 4(%esp)
	movl	-2292(%ebp), %eax               # 4-byte Reload
	movl	%ebx, 8(%esp)
	movl	-2280(%ebp), %ebx               # 4-byte Reload
	movl	%edi, 12(%esp)
	movl	%esi, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 24(%esp)
	movl	%eax, 28(%esp)
	calll	init_array.2_fixp
	movl	-2280(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-16(%ebp), %eax
	movl	%eax, -2288(%ebp)               # 4-byte Spill
	movl	-20(%ebp), %ebx
	leal	-1044(%ebp), %edi
	leal	-2068(%ebp), %esi
	leal	-2132(%ebp), %edx
	leal	-2196(%ebp), %ecx
	leal	-2260(%ebp), %eax
	movl	%eax, -2284(%ebp)               # 4-byte Spill
	movl	-2288(%ebp), %eax               # 4-byte Reload
	shrl	$1, %eax
	shrl	$2, %ebx
	movl	$16, (%esp)
	movl	%eax, 4(%esp)
	movl	-2284(%ebp), %eax               # 4-byte Reload
	movl	%ebx, 8(%esp)
	movl	-2280(%ebp), %ebx               # 4-byte Reload
	movl	%edi, 12(%esp)
	movl	%esi, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 24(%esp)
	movl	%eax, 28(%esp)
	calll	kernel_gesummv.1_fixp
	movl	-2280(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -2276(%ebp)               # 4-byte Spill
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-2276(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2296(%ebp)               # 4-byte Spill
	cmpl	$16, %eax
	jge	.LBB3_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-2280(%ebp), %eax               # 4-byte Reload
	movl	-2296(%ebp), %ecx               # 4-byte Reload
	movl	-2260(%ebp,%ecx,4), %edx
	movl	%edx, -2272(%ebp)
	movl	$0, -2268(%ebp)
	fildll	-2272(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	fstps	y_float@GOTOFF(%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-2296(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2276(%ebp)               # 4-byte Spill
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movl	-2280(%ebp), %ebx               # 4-byte Reload
	leal	y_float@GOTOFF(%ebx), %eax
	movl	$16, (%esp)
	movl	%eax, 4(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$2316, %esp                     # imm = 0x90C
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
	subl	$36, %esp
	.cfi_offset %ebx, -12
	calll	.L4$pb
.L4$pb:
	popl	%eax
.Ltmp2:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp2-.L4$pb), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB4_1
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %ecx                 # 4-byte Reload
	movl	-8(%ebp), %eax                  # 4-byte Reload
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-20(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.7@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-20(%ebp), %ebx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %edx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	flds	(%eax,%edx,4)
	leal	.L.str.8@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.8@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	fprintf@PLT
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB4_1
.LBB4_6:                                # %for.end
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end4:
	.size	print_array, .Lfunc_end4-print_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_gesummv.1_fixp
	.type	kernel_gesummv.1_fixp,@function
kernel_gesummv.1_fixp:                  # @kernel_gesummv.1_fixp
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
	subl	$56, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
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
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	movl	$0, (%edx,%ecx,4)
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
.LBB5_3:                                # %for.cond2
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_6
# %bb.4:                                # %for.body4
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %edx                 # 4-byte Reload
	movl	-60(%ebp), %esi                 # 4-byte Reload
	movl	-40(%ebp), %edi                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	%ecx, %ebx
	shll	$6, %ebx
	addl	%ebx, %eax
	movl	(%eax,%esi,4), %eax
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$2, %eax
	sarl	$2, %edx
	imull	%edx
	movl	%eax, %ebx
	movl	-36(%ebp), %eax                 # 4-byte Reload
	shrdl	$28, %edx, %ebx
	movl	-44(%ebp), %edx                 # 4-byte Reload
	shll	$1, %ebx
	addl	(%edi,%ecx,4), %ebx
	movl	%ebx, (%edi,%ecx,4)
	movl	%ecx, %edi
	shll	$6, %edi
	addl	%edi, %eax
	movl	(%eax,%esi,4), %eax
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%esi, -64(%ebp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	-64(%ebp), %edx                 # 4-byte Reload
	shrdl	$30, %esi, %edx
	shll	$1, %edx
	movl	(%eax,%ecx,4), %esi
	shrl	$3, %edx
	addl	%esi, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-60(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$2, %eax
	sarl	$2, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-48(%ebp), %edx                 # 4-byte Reload
	shrdl	$26, %edi, %esi
	shll	$1, %esi
	movl	%esi, -68(%ebp)                 # 4-byte Spill
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %eax
	sarl	$1, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-68(%ebp), %edx                 # 4-byte Reload
	shrdl	$26, %edi, %esi
	shll	$1, %esi
	addl	%esi, %edx
	shll	$1, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.7:                                # %for.inc23
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_8:                                # %for.end25
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	kernel_gesummv.1_fixp, .Lfunc_end5-kernel_gesummv.1_fixp
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
	subl	$156, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L6$pb
.L6$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L6$pb), %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	movl	36(%ebp), %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	movl	32(%ebp), %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	movl	28(%ebp), %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	movl	24(%ebp), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -20(%ebp)                 # 4-byte Spill
	movl	$1610612736, (%ecx)             # imm = 0x60000000
	movl	$1288490240, (%eax)             # imm = 0x4CCCCD00
	xorl	%eax, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	cltd
	idivl	%ecx
	shll	$28, %edx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -68(%ebp)                 # 4-byte Spill
	sarl	$1, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -76(%ebp)                 # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -72(%ebp)                 # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-76(%ebp), %ebx                 # 4-byte Reload
	movl	-72(%ebp), %ecx                 # 4-byte Reload
	movl	%eax, %edi
	movl	-68(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -64(%ebp)                 # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-64(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -57(%ebp)                  # 1-byte Spill
	calll	__divdi3@PLT
	movb	-57(%ebp), %cl                  # 1-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	jne	.LBB6_10
# %bb.9:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
.LBB6_10:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-48(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	movl	-32(%ebp), %esi                 # 4-byte Reload
	movl	-52(%ebp), %edi                 # 4-byte Reload
	shll	$5, %edi
	movl	%edi, (%esi,%ecx,4)
	movl	$0, (%edx,%ecx,4)
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -80(%ebp)                 # 4-byte Spill
.LBB6_3:                                # %for.cond6
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-80(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_6
# %bb.4:                                # %for.body9
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-84(%ebp), %edx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	addl	$1, %eax
	cltd
	idivl	%ecx
	shll	$28, %edx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -104(%ebp)                # 4-byte Spill
	sarl	$1, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -112(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -108(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-112(%ebp), %ebx                # 4-byte Reload
	movl	-108(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-104(%ebp), %eax                # 4-byte Reload
	movl	%edi, -100(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-100(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -93(%ebp)                  # 1-byte Spill
	calll	__divdi3@PLT
	movb	-93(%ebp), %cl                  # 1-byte Reload
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	jne	.LBB6_12
# %bb.11:                               # %for.body9
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-92(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -88(%ebp)                 # 4-byte Spill
.LBB6_12:                               # %for.body9
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-84(%ebp), %edx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %esi                 # 4-byte Reload
	movl	-88(%ebp), %edi                 # 4-byte Reload
	shll	$5, %edi
	shll	$6, %eax
	addl	%eax, %esi
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%edi, (%esi,%edx,4)
	imull	%edx, %eax
	addl	$2, %eax
	cltd
	idivl	%ecx
	shll	$28, %edx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -132(%ebp)                # 4-byte Spill
	sarl	$1, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -140(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -136(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-140(%ebp), %ebx                # 4-byte Reload
	movl	-136(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-132(%ebp), %eax                # 4-byte Reload
	movl	%edi, -128(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-128(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -121(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-121(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -120(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -116(%ebp)                # 4-byte Spill
	jne	.LBB6_14
# %bb.13:                               # %for.body9
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-120(%ebp), %eax                # 4-byte Reload
	movl	%eax, -116(%ebp)                # 4-byte Spill
.LBB6_14:                               # %for.body9
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-84(%ebp), %ecx                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-48(%ebp), %esi                 # 4-byte Reload
	movl	-116(%ebp), %edx                # 4-byte Reload
	shll	$5, %edx
	shll	$6, %esi
	addl	%esi, %eax
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-84(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc24
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-48(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB6_1
.LBB6_8:                                # %for.end26
	addl	$156, %esp
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
	.type	y_float,@object                 # @y_float
	.bss
	.globl	y_float
	.p2align	2
y_float:
	.zero	64
	.size	y_float, 64

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"\n"
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%0.16f "
	.size	.L.str.8, 8

	.ident	"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym print_array
	.addrsig_sym fprintf
	.addrsig_sym kernel_gesummv.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym y_float
	.addrsig_sym stderr

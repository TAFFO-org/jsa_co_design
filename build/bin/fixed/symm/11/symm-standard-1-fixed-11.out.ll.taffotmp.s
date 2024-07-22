	.text
	.file	"symm.c"
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
	.long	0x4c800000                      # float 67108864
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
	subl	$1756, %esp                     # imm = 0x6DC
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L3$pb
.L3$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L3$pb), %ebx
	movl	%ebx, -1720(%ebp)               # 4-byte Spill
	leal	-660(%ebp), %edx
	leal	-1060(%ebp), %ecx
	leal	-1700(%ebp), %eax
	leal	-16(%ebp), %edi
	leal	-20(%ebp), %esi
	movl	$10, (%esp)
	movl	$16, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, 24(%esp)
	calll	init_array.2_fixp
	movl	-1720(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-1720(%ebp), %ebx               # 4-byte Reload
	movl	-16(%ebp), %edi
	movl	-20(%ebp), %esi
	leal	-660(%ebp), %edx
	leal	-1060(%ebp), %ecx
	leal	-1700(%ebp), %eax
	shrl	$1, %edi
	movl	$10, (%esp)
	movl	$16, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, 24(%esp)
	calll	kernel_symm.1_fixp
	movl	-1720(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -1716(%ebp)               # 4-byte Spill
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-1716(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1724(%ebp)               # 4-byte Spill
	cmpl	$10, %eax
	jge	.LBB3_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1728(%ebp)               # 4-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %for.cond11
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1728(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1732(%ebp)               # 4-byte Spill
	cmpl	$16, %eax
	jge	.LBB3_6
# %bb.4:                                # %for.body13
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-1732(%ebp), %ecx               # 4-byte Reload
	movl	-1720(%ebp), %eax               # 4-byte Reload
	movl	-1724(%ebp), %edx               # 4-byte Reload
	shll	$6, %edx
	leal	-660(%ebp,%edx), %esi
	movl	(%esi,%ecx,4), %esi
	movl	%esi, -1712(%ebp)
	movl	$0, -1708(%ebp)
	fildll	-1712(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	leal	C_float@GOTOFF(%eax,%edx), %eax
	fstps	(%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-1732(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1728(%ebp)               # 4-byte Spill
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc17
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-1724(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1716(%ebp)               # 4-byte Spill
	jmp	.LBB3_1
.LBB3_8:                                # %for.end19
	movl	-1720(%ebp), %ebx               # 4-byte Reload
	leal	C_float@GOTOFF(%ebx), %eax
	movl	$10, (%esp)
	movl	$16, 4(%esp)
	movl	%eax, 8(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$1756, %esp                     # imm = 0x6DC
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
	subl	$48, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	calll	.L4$pb
.L4$pb:
	popl	%eax
.Ltmp2:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp2-.L4$pb), %eax
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
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %for.cond1
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_8
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %edx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	addl	%ecx, %eax
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.8@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_6:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-32(%ebp), %esi                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	shll	$6, %esi
	addl	%esi, %eax
	flds	(%eax,%edx,4)
	leal	.L.str.9@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.9@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	fprintf@PLT
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB4_3
.LBB4_8:                                # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_9
.LBB4_9:                                # %for.inc7
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	jmp	.LBB4_1
.LBB4_10:                               # %for.end9
	addl	$48, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end4:
	.size	print_array, .Lfunc_end4-print_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_symm.1_fixp
	.type	kernel_symm.1_fixp,@function
kernel_symm.1_fixp:                     # @kernel_symm.1_fixp
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
	subl	$68, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
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
                                        #       Child Loop BB5_5 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %for.cond1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_5 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_10
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB5_3 Depth=2
	xorl	%eax, %eax
	shrl	$13, %eax
	xorl	%ecx, %ecx
	movl	%ecx, -64(%ebp)                 # 4-byte Spill
	movl	%eax, -60(%ebp)                 # 4-byte Spill
.LBB5_5:                                # %for.cond4
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%ebp), %ecx                 # 4-byte Reload
	movl	-64(%ebp), %eax                 # 4-byte Reload
	movl	-60(%ebp), %edx                 # 4-byte Reload
	movl	%edx, -72(%ebp)                 # 4-byte Spill
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_8
# %bb.6:                                # %for.body6
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %esi                 # 4-byte Reload
	movl	-56(%ebp), %edi                 # 4-byte Reload
	movl	-44(%ebp), %edx                 # 4-byte Reload
	movl	-36(%ebp), %ebx                 # 4-byte Reload
	movl	%esi, %eax
	shll	$6, %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	(%edx,%edi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %edx
	imull	%edx
	shrdl	$28, %edx, %eax
	shll	$1, %eax
	imull	$40, %esi, %edx
	addl	%edx, %ecx
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	(%ecx,%edx,4), %ecx
	shrl	$1, %eax
	sarl	$9, %eax
	sarl	$2, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	-68(%ebp), %edx                 # 4-byte Reload
	shrdl	$19, %eax, %ecx
	movl	%edx, %eax
	shll	$6, %eax
	addl	%eax, %ebx
	movl	(%ebx,%edi,4), %eax
	shrl	$7, %eax
	addl	%ecx, %eax
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	shll	$7, %eax
	movl	%eax, (%ebx,%edi,4)
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %ebx
	shll	$6, %ebx
	addl	%ebx, %eax
	movl	(%eax,%edi,4), %eax
	imull	$40, %esi, %esi
	addl	%esi, %ecx
	movl	(%ecx,%edx,4), %ecx
	shrl	$1, %eax
	sarl	$10, %eax
	sarl	$2, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-72(%ebp), %eax                 # 4-byte Reload
	shrdl	$19, %edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	-68(%ebp), %ecx                 # 4-byte Reload
	addl	$1, %ecx
	movl	%ecx, -64(%ebp)                 # 4-byte Spill
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	jmp	.LBB5_5
.LBB5_8:                                # %for.end
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-56(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %edx                 # 4-byte Reload
	movl	-48(%ebp), %esi                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	%esi, %edi
	shll	$6, %edi
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$4, %eax
	imull	%edx
	movl	%eax, %edi
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %ebx
	movl	-44(%ebp), %edx                 # 4-byte Reload
	shrdl	$25, %ebx, %edi
	shll	$1, %edi
	movl	%esi, %ebx
	shll	$6, %ebx
	addl	%ebx, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %edx
	imull	%edx
	movl	%edx, %ebx
	movl	-40(%ebp), %edx                 # 4-byte Reload
	shrdl	$28, %ebx, %eax
	shll	$1, %eax
	imull	$40, %esi, %ebx
	addl	%ebx, %edx
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	sarl	$9, %eax
	sarl	$2, %edx
	imull	%edx
	movl	%eax, %ebx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	shrdl	$19, %edx, %ebx
	movl	-72(%ebp), %edx                 # 4-byte Reload
	shrl	$8, %edi
	sarl	$1, %ebx
	addl	%ebx, %edi
	movl	%edi, -80(%ebp)                 # 4-byte Spill
	shrl	$1, %eax
	sarl	$10, %eax
	sarl	$1, %edx
	imull	%edx
	movl	%eax, %edi
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %ebx
	movl	-80(%ebp), %edx                 # 4-byte Reload
	shrdl	$18, %ebx, %edi
	addl	%edi, %edx
	shll	$6, %esi
	addl	%esi, %eax
	shll	$8, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc33
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-56(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_10:                               # %for.end35
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_11
.LBB5_11:                               # %for.inc36
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-48(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_12:                               # %for.end38
	addl	$68, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	kernel_symm.1_fixp, .Lfunc_end5-kernel_symm.1_fixp
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
	subl	$172, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L6$pb
.L6$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L6$pb), %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	movl	32(%ebp), %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	movl	28(%ebp), %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	movl	24(%ebp), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	20(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	%edx, -24(%ebp)                 # 4-byte Spill
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
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB6_3
.LBB6_3:                                # %for.cond3
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_6
# %bb.4:                                # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-40(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	%edx, %eax
	movl	$100, %esi
	cltd
	idivl	%esi
	shll	$27, %edx
	shll	$28, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -72(%ebp)                 # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -80(%ebp)                 # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -76(%ebp)                 # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-80(%ebp), %ebx                 # 4-byte Reload
	movl	-76(%ebp), %ecx                 # 4-byte Reload
	movl	%eax, %edi
	movl	-72(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -68(%ebp)                 # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-68(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-40(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -61(%ebp)                  # 1-byte Spill
	calll	__divdi3@PLT
	movb	-61(%ebp), %cl                  # 1-byte Reload
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jne	.LBB6_22
# %bb.21:                               # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
.LBB6_22:                               # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-40(%ebp), %ebx                 # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	movl	-44(%ebp), %esi                 # 4-byte Reload
	movl	-28(%ebp), %edi                 # 4-byte Reload
	movl	-56(%ebp), %eax                 # 4-byte Reload
	shll	$2, %eax
	movl	%esi, %ecx
	shll	$6, %ecx
	addl	%ecx, %edi
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	shrl	$2, %eax
	movl	%eax, (%edi,%edx,4)
	movl	-24(%ebp), %eax                 # 4-byte Reload
	addl	%esi, %eax
	subl	%edx, %eax
	movl	$100, %esi
	cltd
	idivl	%esi
	shll	$27, %edx
	shll	$28, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -100(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -108(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -104(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-108(%ebp), %ebx                # 4-byte Reload
	movl	-104(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-100(%ebp), %eax                # 4-byte Reload
	movl	%edi, -96(%ebp)                 # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-96(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-40(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -89(%ebp)                  # 1-byte Spill
	calll	__divdi3@PLT
	movb	-89(%ebp), %cl                  # 1-byte Reload
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jne	.LBB6_24
# %bb.23:                               # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-88(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -84(%ebp)                 # 4-byte Spill
.LBB6_24:                               # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-44(%ebp), %esi                 # 4-byte Reload
	movl	-84(%ebp), %edx                 # 4-byte Reload
	shll	$2, %edx
	shll	$6, %esi
	addl	%esi, %eax
	shll	$2, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc15
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB6_1
.LBB6_8:                                # %for.end17
	xorl	%eax, %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB6_9
.LBB6_9:                                # %for.cond18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
                                        #     Child Loop BB6_15 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-112(%ebp), %eax                # 4-byte Reload
	movl	%eax, -116(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_20
# %bb.10:                               # %for.body21
                                        #   in Loop: Header=BB6_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB6_11
.LBB6_11:                               # %for.cond22
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-116(%ebp), %ecx                # 4-byte Reload
	movl	-120(%ebp), %eax                # 4-byte Reload
	movl	%eax, -124(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jg	.LBB6_14
# %bb.12:                               # %for.body25
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-40(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-124(%ebp), %edx                # 4-byte Reload
	movl	-116(%ebp), %eax                # 4-byte Reload
	addl	%edx, %eax
	movl	$100, %esi
	cltd
	idivl	%esi
	shll	$27, %edx
	shll	$28, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	sarl	$1, %ecx
	movl	%ecx, -144(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -152(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
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
	movl	-40(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB6_26
# %bb.25:                               # %for.body25
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-132(%ebp), %eax                # 4-byte Reload
	movl	%eax, -128(%ebp)                # 4-byte Spill
.LBB6_26:                               # %for.body25
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-124(%ebp), %ecx                # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-116(%ebp), %esi                # 4-byte Reload
	movl	-128(%ebp), %edx                # 4-byte Reload
	shll	$2, %edx
	imull	$40, %esi, %esi
	addl	%esi, %eax
	shrl	$7, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.13:                               # %for.inc33
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-124(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB6_11
.LBB6_14:                               # %for.end35
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-116(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -156(%ebp)                # 4-byte Spill
.LBB6_15:                               # %for.cond37
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-156(%ebp), %eax                # 4-byte Reload
	movl	%eax, -160(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_18
# %bb.16:                               # %for.body40
                                        #   in Loop: Header=BB6_15 Depth=2
	movl	-160(%ebp), %ecx                # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-116(%ebp), %edx                # 4-byte Reload
	imull	$40, %edx, %edx
	addl	%edx, %eax
	movl	$-2095054848, (%eax,%ecx,4)     # imm = 0x83200000
# %bb.17:                               # %for.inc43
                                        #   in Loop: Header=BB6_15 Depth=2
	movl	-160(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -156(%ebp)                # 4-byte Spill
	jmp	.LBB6_15
.LBB6_18:                               # %for.end45
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_19
.LBB6_19:                               # %for.inc46
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-116(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB6_9
.LBB6_20:                               # %for.end48
	addl	$172, %esp
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
	.type	C_float,@object                 # @C_float
	.bss
	.globl	C_float
	.p2align	2
C_float:
	.zero	640
	.size	C_float, 640

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"\n"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%0.16f "
	.size	.L.str.9, 8

	.ident	"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym print_array
	.addrsig_sym fprintf
	.addrsig_sym kernel_symm.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym C_float
	.addrsig_sym stderr

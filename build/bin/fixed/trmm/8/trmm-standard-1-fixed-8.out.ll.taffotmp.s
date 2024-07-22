	.text
	.file	"trmm.c"
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
	.long	0x4e000000                      # float 536870912
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
	pushl	%esi
	subl	$1104, %esp                     # imm = 0x450
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	calll	.L3$pb
.L3$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L3$pb), %ebx
	movl	%ebx, -1072(%ebp)               # 4-byte Spill
	leal	-412(%ebp), %ecx
	leal	-1052(%ebp), %eax
	leal	-12(%ebp), %edx
	movl	$10, (%esp)
	movl	$16, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 16(%esp)
	calll	init_array.2_fixp
	movl	-1072(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-1072(%ebp), %ebx               # 4-byte Reload
	movl	-12(%ebp), %edx
	leal	-412(%ebp), %ecx
	leal	-1052(%ebp), %eax
	shrl	$2, %edx
	movl	$10, (%esp)
	movl	$16, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 16(%esp)
	calll	kernel_trmm.1_fixp
	movl	-1072(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -1068(%ebp)               # 4-byte Spill
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-1068(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1076(%ebp)               # 4-byte Spill
	cmpl	$10, %eax
	jge	.LBB3_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1080(%ebp)               # 4-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %for.cond7
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1080(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1084(%ebp)               # 4-byte Spill
	cmpl	$16, %eax
	jge	.LBB3_6
# %bb.4:                                # %for.body9
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-1084(%ebp), %ecx               # 4-byte Reload
	movl	-1072(%ebp), %eax               # 4-byte Reload
	movl	-1076(%ebp), %edx               # 4-byte Reload
	shll	$6, %edx
	leal	-1052(%ebp,%edx), %esi
	movl	(%esi,%ecx,4), %esi
	movl	%esi, -1064(%ebp)
	movl	$0, -1060(%ebp)
	fildll	-1064(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	leal	B_float@GOTOFF(%eax,%edx), %eax
	fstps	(%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-1084(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1080(%ebp)               # 4-byte Spill
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc13
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-1076(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1068(%ebp)               # 4-byte Spill
	jmp	.LBB3_1
.LBB3_8:                                # %for.end15
	movl	-1072(%ebp), %ebx               # 4-byte Reload
	leal	B_float@GOTOFF(%ebx), %eax
	movl	$10, (%esp)
	movl	$16, 4(%esp)
	movl	%eax, 8(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$1104, %esp                     # imm = 0x450
	popl	%esi
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
	leal	.L.str.6@GOTOFF(%ebx), %eax
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
	leal	.L.str.7@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.7@GOTOFF(%ebx), %edx
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
	.p2align	4, 0x90                         # -- Begin function kernel_trmm.1_fixp
	.type	kernel_trmm.1_fixp,@function
kernel_trmm.1_fixp:                     # @kernel_trmm.1_fixp
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
	subl	$48, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
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
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %for.cond1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_5 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_10
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
.LBB5_5:                                # %for.cond4
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_8
# %bb.6:                                # %for.body6
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-48(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %edx                 # 4-byte Reload
	movl	-40(%ebp), %edi                 # 4-byte Reload
	movl	-56(%ebp), %esi                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	imull	$40, %esi, %ebx
	addl	%ebx, %eax
	movl	(%eax,%edi,4), %eax
	shll	$6, %esi
	addl	%esi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$3, %eax
	sarl	$1, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-40(%ebp), %edx                 # 4-byte Reload
	shrdl	$27, %edi, %esi
	shll	$1, %esi
	shll	$6, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %edx
	shrl	$1, %edx
	addl	%esi, %edx
	shll	$1, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-56(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	jmp	.LBB5_5
.LBB5_8:                                # %for.end
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-48(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %edx                 # 4-byte Reload
	movl	-40(%ebp), %esi                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%esi, %edi
	shll	$6, %edi
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %edx
	imull	%edx
	movl	%eax, %edi
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -60(%ebp)                 # 4-byte Spill
	movl	%edx, %edi
	movl	-60(%ebp), %edx                 # 4-byte Reload
	shrdl	$27, %edi, %edx
	shll	$1, %edx
	shll	$6, %esi
	addl	%esi, %eax
	shll	$1, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc18
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-48(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_10:                               # %for.end20
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_11
.LBB5_11:                               # %for.inc21
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_12:                               # %for.end23
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	kernel_trmm.1_fixp, .Lfunc_end5-kernel_trmm.1_fixp
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
	subl	$124, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L6$pb
.L6$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L6$pb), %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	movl	24(%ebp), %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	%ecx, -24(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %ecx
	movl	%ecx, -20(%ebp)                 # 4-byte Spill
	movl	$1610612736, (%eax)             # imm = 0x60000000
	xorl	%eax, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #     Child Loop BB6_10 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_15
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB6_3
.LBB6_3:                                # %for.cond3
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_9
# %bb.4:                                # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB6_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-36(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %edx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	%edx, %eax
	cltd
	idivl	%ecx
	shll	$28, %edx
	shll	$28, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -68(%ebp)                 # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$27, %ecx
	movl	%ecx, -76(%ebp)                 # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$27, %edx, %ecx
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
	movl	-36(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB6_17
# %bb.16:                               # %if.then
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
.LBB6_17:                               # %if.then
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-48(%ebp), %ecx                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-40(%ebp), %esi                 # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	shll	$4, %edx
	imull	$40, %esi, %esi
	addl	%esi, %eax
	movl	%edx, (%eax,%ecx,4)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-48(%ebp), %ecx                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	imull	$40, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
.LBB6_7:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_8
.LBB6_8:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-48(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB6_3
.LBB6_9:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	imull	$40, %ecx, %edx
	addl	%edx, %eax
	movl	$-2147483648, (%eax,%ecx,4)     # imm = 0x80000000
	xorl	%eax, %eax
	movl	%eax, -80(%ebp)                 # 4-byte Spill
.LBB6_10:                               # %for.cond13
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-80(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_13
# %bb.11:                               # %for.body16
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	-36(%ebp), %ebx                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-84(%ebp), %eax                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	subl	%eax, %edx
	movl	%ecx, %eax
	addl	%edx, %eax
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
	movl	-36(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB6_19
# %bb.18:                               # %for.body16
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	-92(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -88(%ebp)                 # 4-byte Spill
.LBB6_19:                               # %for.body16
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	-84(%ebp), %ecx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-40(%ebp), %esi                 # 4-byte Reload
	movl	-88(%ebp), %edx                 # 4-byte Reload
	shll	$5, %edx
	shll	$6, %esi
	addl	%esi, %eax
	shrl	$2, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.12:                               # %for.inc24
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	-84(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	jmp	.LBB6_10
.LBB6_13:                               # %for.end26
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_14
.LBB6_14:                               # %for.inc27
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB6_1
.LBB6_15:                               # %for.end29
	addl	$124, %esp
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
	.type	B_float,@object                 # @B_float
	.bss
	.globl	B_float
	.p2align	2
B_float:
	.zero	640
	.size	B_float, 640

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"\n"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%0.16f "
	.size	.L.str.7, 8

	.ident	"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym print_array
	.addrsig_sym fprintf
	.addrsig_sym kernel_trmm.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym B_float
	.addrsig_sym stderr

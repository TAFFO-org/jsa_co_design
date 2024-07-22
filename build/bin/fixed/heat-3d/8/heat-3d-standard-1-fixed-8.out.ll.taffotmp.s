	.text
	.file	"heat-3d.c"
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
	subl	$1068, %esp                     # imm = 0x42C
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L3$pb
.L3$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L3$pb), %ebx
	movl	%ebx, -1032(%ebp)               # 4-byte Spill
	leal	-512(%ebp), %ecx
	leal	-1012(%ebp), %eax
	movl	$5, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	calll	init_array.2_fixp
	movl	-1032(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-1032(%ebp), %ebx               # 4-byte Reload
	leal	-512(%ebp), %ecx
	leal	-1012(%ebp), %eax
	movl	$10, (%esp)
	movl	$5, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 12(%esp)
	calll	kernel_heat_3d.1_fixp
	movl	-1032(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -1028(%ebp)               # 4-byte Spill
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #       Child Loop BB3_5 Depth 3
	movl	-1028(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1036(%ebp)               # 4-byte Spill
	cmpl	$5, %eax
	jge	.LBB3_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1040(%ebp)               # 4-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %for.cond6
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_5 Depth 3
	movl	-1040(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1044(%ebp)               # 4-byte Spill
	cmpl	$5, %eax
	jge	.LBB3_10
# %bb.4:                                # %for.body8
                                        #   in Loop: Header=BB3_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1048(%ebp)               # 4-byte Spill
	jmp	.LBB3_5
.LBB3_5:                                # %for.cond9
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1048(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1052(%ebp)               # 4-byte Spill
	cmpl	$5, %eax
	jge	.LBB3_8
# %bb.6:                                # %for.body11
                                        #   in Loop: Header=BB3_5 Depth=3
	movl	-1052(%ebp), %ecx               # 4-byte Reload
	movl	-1032(%ebp), %eax               # 4-byte Reload
	movl	-1044(%ebp), %edx               # 4-byte Reload
	movl	-1036(%ebp), %esi               # 4-byte Reload
	imull	$100, %esi, %esi
	leal	-512(%ebp,%esi), %edi
	shll	$2, %edx
	leal	(%edx,%edx,4), %edx
	addl	%edx, %edi
	movl	(%edi,%ecx,4), %edi
	movl	%edi, -1024(%ebp)
	movl	$0, -1020(%ebp)
	fildll	-1024(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	leal	A_float@GOTOFF(%eax,%esi), %eax
	addl	%edx, %eax
	fstps	(%eax,%ecx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=3
	movl	-1052(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1048(%ebp)               # 4-byte Spill
	jmp	.LBB3_5
.LBB3_8:                                # %for.end
                                        #   in Loop: Header=BB3_3 Depth=2
	jmp	.LBB3_9
.LBB3_9:                                # %for.inc17
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-1044(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1040(%ebp)               # 4-byte Spill
	jmp	.LBB3_3
.LBB3_10:                               # %for.end19
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_11
.LBB3_11:                               # %for.inc20
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-1036(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1028(%ebp)               # 4-byte Spill
	jmp	.LBB3_1
.LBB3_12:                               # %for.end22
	movl	-1032(%ebp), %ebx               # 4-byte Reload
	leal	A_float@GOTOFF(%ebx), %eax
	movl	$5, (%esp)
	movl	%eax, 4(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$1068, %esp                     # imm = 0x42C
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
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L4$pb
.L4$pb:
	popl	%eax
.Ltmp2:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp2-.L4$pb), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB4_1
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #       Child Loop BB4_5 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_14
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %for.cond1
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_5 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_12
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB4_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # %for.cond4
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_10
# %bb.6:                                # %for.body6
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	-48(%ebp), %ecx                 # 4-byte Reload
	movl	-20(%ebp), %esi                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	imull	%esi, %eax
	imull	%esi, %eax
	imull	%esi, %edx
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_8
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.4@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_8:                                # %if.end
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	-48(%ebp), %edx                 # 4-byte Reload
	movl	-40(%ebp), %esi                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-32(%ebp), %edi                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	imull	$100, %edi, %edi
	addl	%edi, %eax
	leal	(%esi,%esi,4), %esi
	leal	(%eax,%esi,4), %eax
	flds	(%eax,%edx,4)
	leal	.L.str.5@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.5@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	fprintf@PLT
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	-48(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB4_5
.LBB4_10:                               # %for.end
                                        #   in Loop: Header=BB4_3 Depth=2
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc14
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB4_3
.LBB4_12:                               # %for.end16
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_13
.LBB4_13:                               # %for.inc17
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB4_1
.LBB4_14:                               # %for.end19
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end4:
	.size	print_array, .Lfunc_end4-print_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_heat_3d.1_fixp
	.type	kernel_heat_3d.1_fixp,@function
kernel_heat_3d.1_fixp:                  # @kernel_heat_3d.1_fixp
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
	subl	$100, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	movl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
                                        #       Child Loop BB5_5 Depth 3
                                        #         Child Loop BB5_7 Depth 4
                                        #     Child Loop BB5_15 Depth 2
                                        #       Child Loop BB5_17 Depth 3
                                        #         Child Loop BB5_19 Depth 4
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	cmpl	$10, %eax
	jg	.LBB5_28
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %for.cond1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_5 Depth 3
                                        #         Child Loop BB5_7 Depth 4
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_14
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	$1, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %for.cond4
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_7 Depth 4
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_12
# %bb.6:                                # %for.body7
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	$1, %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	jmp	.LBB5_7
.LBB5_7:                                # %for.cond8
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        #       Parent Loop BB5_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_10
# %bb.8:                                # %for.body11
                                        #   in Loop: Header=BB5_7 Depth=4
	movl	-56(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %esi                 # 4-byte Reload
	movl	-40(%ebp), %edi                 # 4-byte Reload
	movl	-24(%ebp), %ebx                 # 4-byte Reload
	movl	%edi, %eax
	addl	$1, %eax
	imull	$100, %eax, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %ecx
	movl	$2, %eax
	shll	$29, %eax
	shrl	$1, %ecx
	sarl	$4, %eax
	sarl	$1, %ecx
	imull	%ecx
	movl	%edx, %ecx
	movl	-72(%ebp), %edx                 # 4-byte Reload
	shrdl	$25, %ecx, %eax
	shrl	$2, %edx
	subl	%eax, %edx
	movl	%edi, %eax
	subl	$1, %eax
	imull	$100, %eax, %ecx
	movl	%ebx, %eax
	addl	%ecx, %eax
	imull	$20, %esi, %ecx
	addl	%ecx, %eax
	movl	-56(%ebp), %ecx                 # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	shrl	$2, %eax
	addl	%eax, %edx
	movl	$1, %eax
	shrl	$1, %eax
	sarl	$23, %edx
	imull	%edx
	shrdl	$2, %edx, %eax
	shll	$25, %eax
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	movl	%esi, %edx
	addl	$1, %edx
	imull	$20, %edx, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %ecx
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	-56(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%edx,4), %edx
	movl	$2, %eax
	shll	$29, %eax
	shrl	$1, %edx
	sarl	$4, %eax
	sarl	$1, %edx
	imull	%edx
	shrdl	$25, %edx, %eax
	shrl	$2, %ecx
	subl	%eax, %ecx
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	movl	%esi, %edx
	subl	$1, %edx
	imull	$20, %edx, %edx
	addl	%edx, %eax
	movl	-56(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%edx,4), %eax
	shrl	$2, %eax
	addl	%eax, %ecx
	movl	$1, %eax
	shrl	$1, %eax
	sarl	$23, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-68(%ebp), %eax                 # 4-byte Reload
	movl	%ecx, -64(%ebp)                 # 4-byte Spill
	movl	%edx, %ecx
	movl	-64(%ebp), %edx                 # 4-byte Reload
	shrdl	$2, %ecx, %edx
	movl	-56(%ebp), %ecx                 # 4-byte Reload
	shll	$25, %edx
	sarl	$1, %eax
	sarl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	4(%eax,%ecx,4), %ecx
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	-56(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%edx,4), %edx
	movl	$2, %eax
	shll	$29, %eax
	shrl	$1, %edx
	sarl	$4, %eax
	sarl	$1, %edx
	imull	%edx
	shrdl	$25, %edx, %eax
	shrl	$2, %ecx
	subl	%eax, %ecx
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	-56(%ebp), %edx                 # 4-byte Reload
	subl	$1, %edx
	movl	(%eax,%edx,4), %eax
	shrl	$2, %eax
	addl	%eax, %ecx
	movl	$1, %eax
	shrl	$1, %eax
	sarl	$23, %ecx
	imull	%ecx
	movl	%edx, %ecx
	movl	-60(%ebp), %edx                 # 4-byte Reload
	shrdl	$2, %ecx, %eax
	movl	-56(%ebp), %ecx                 # 4-byte Reload
	shll	$24, %eax
	sarl	$1, %edx
	sarl	$1, %eax
	addl	%eax, %edx
	imull	$100, %edi, %eax
	addl	%eax, %ebx
	imull	$20, %esi, %eax
	addl	%eax, %ebx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	(%ebx,%ecx,4), %ebx
	shrl	$2, %ebx
	addl	%ebx, %edx
	imull	$100, %edi, %edi
	addl	%edi, %eax
	imull	$20, %esi, %esi
	addl	%esi, %eax
	shll	$2, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB5_7 Depth=4
	movl	-56(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	jmp	.LBB5_7
.LBB5_10:                               # %for.end
                                        #   in Loop: Header=BB5_5 Depth=3
	jmp	.LBB5_11
.LBB5_11:                               # %for.inc63
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-48(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB5_5
.LBB5_12:                               # %for.end65
                                        #   in Loop: Header=BB5_3 Depth=2
	jmp	.LBB5_13
.LBB5_13:                               # %for.inc66
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_14:                               # %for.end68
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	jmp	.LBB5_15
.LBB5_15:                               # %for.cond69
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
                                        #         Child Loop BB5_19 Depth 4
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_26
# %bb.16:                               # %for.body72
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	$1, %eax
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jmp	.LBB5_17
.LBB5_17:                               # %for.cond73
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_19 Depth 4
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-84(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_24
# %bb.18:                               # %for.body76
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	$1, %eax
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	jmp	.LBB5_19
.LBB5_19:                               # %for.cond77
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        #       Parent Loop BB5_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-92(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_22
# %bb.20:                               # %for.body80
                                        #   in Loop: Header=BB5_19 Depth=4
	movl	-96(%ebp), %ecx                 # 4-byte Reload
	movl	-88(%ebp), %esi                 # 4-byte Reload
	movl	-80(%ebp), %edi                 # 4-byte Reload
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	%edi, %eax
	addl	$1, %eax
	imull	$100, %eax, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %ecx
	movl	$2, %eax
	shll	$29, %eax
	shrl	$1, %ecx
	sarl	$4, %eax
	sarl	$1, %ecx
	imull	%ecx
	movl	%edx, %ecx
	movl	-112(%ebp), %edx                # 4-byte Reload
	shrdl	$25, %ecx, %eax
	shrl	$2, %edx
	subl	%eax, %edx
	movl	%edi, %eax
	subl	$1, %eax
	imull	$100, %eax, %ecx
	movl	%ebx, %eax
	addl	%ecx, %eax
	imull	$20, %esi, %ecx
	addl	%ecx, %eax
	movl	-96(%ebp), %ecx                 # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	shrl	$2, %eax
	addl	%eax, %edx
	movl	$1, %eax
	shrl	$1, %eax
	sarl	$23, %edx
	imull	%edx
	shrdl	$2, %edx, %eax
	shll	$25, %eax
	movl	%eax, -108(%ebp)                # 4-byte Spill
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	movl	%esi, %edx
	addl	$1, %edx
	imull	$20, %edx, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %ecx
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	-96(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%edx,4), %edx
	movl	$2, %eax
	shll	$29, %eax
	shrl	$1, %edx
	sarl	$4, %eax
	sarl	$1, %edx
	imull	%edx
	shrdl	$25, %edx, %eax
	shrl	$2, %ecx
	subl	%eax, %ecx
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	movl	%esi, %edx
	subl	$1, %edx
	imull	$20, %edx, %edx
	addl	%edx, %eax
	movl	-96(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%edx,4), %eax
	shrl	$2, %eax
	addl	%eax, %ecx
	movl	$1, %eax
	shrl	$1, %eax
	sarl	$23, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-108(%ebp), %eax                # 4-byte Reload
	movl	%ecx, -104(%ebp)                # 4-byte Spill
	movl	%edx, %ecx
	movl	-104(%ebp), %edx                # 4-byte Reload
	shrdl	$2, %ecx, %edx
	movl	-96(%ebp), %ecx                 # 4-byte Reload
	shll	$25, %edx
	sarl	$1, %eax
	sarl	$1, %edx
	addl	%edx, %eax
	movl	%eax, -100(%ebp)                # 4-byte Spill
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	4(%eax,%ecx,4), %ecx
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	-96(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%edx,4), %edx
	movl	$2, %eax
	shll	$29, %eax
	shrl	$1, %edx
	sarl	$4, %eax
	sarl	$1, %edx
	imull	%edx
	shrdl	$25, %edx, %eax
	shrl	$2, %ecx
	subl	%eax, %ecx
	imull	$100, %edi, %edx
	movl	%ebx, %eax
	addl	%edx, %eax
	imull	$20, %esi, %edx
	addl	%edx, %eax
	movl	-96(%ebp), %edx                 # 4-byte Reload
	subl	$1, %edx
	movl	(%eax,%edx,4), %eax
	shrl	$2, %eax
	addl	%eax, %ecx
	movl	$1, %eax
	shrl	$1, %eax
	sarl	$23, %ecx
	imull	%ecx
	movl	%edx, %ecx
	movl	-100(%ebp), %edx                # 4-byte Reload
	shrdl	$2, %ecx, %eax
	movl	-96(%ebp), %ecx                 # 4-byte Reload
	shll	$24, %eax
	sarl	$1, %edx
	sarl	$1, %eax
	addl	%eax, %edx
	imull	$100, %edi, %eax
	addl	%eax, %ebx
	imull	$20, %esi, %eax
	addl	%eax, %ebx
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	(%ebx,%ecx,4), %ebx
	shrl	$2, %ebx
	addl	%ebx, %edx
	imull	$100, %edi, %edi
	addl	%edi, %eax
	imull	$20, %esi, %esi
	addl	%esi, %eax
	shll	$2, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.21:                               # %for.inc135
                                        #   in Loop: Header=BB5_19 Depth=4
	movl	-96(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	jmp	.LBB5_19
.LBB5_22:                               # %for.end137
                                        #   in Loop: Header=BB5_17 Depth=3
	jmp	.LBB5_23
.LBB5_23:                               # %for.inc138
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-88(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jmp	.LBB5_17
.LBB5_24:                               # %for.end140
                                        #   in Loop: Header=BB5_15 Depth=2
	jmp	.LBB5_25
.LBB5_25:                               # %for.inc141
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	-80(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	jmp	.LBB5_15
.LBB5_26:                               # %for.end143
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_27
.LBB5_27:                               # %for.inc144
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_28:                               # %for.end146
	addl	$100, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	kernel_heat_3d.1_fixp, .Lfunc_end5-kernel_heat_3d.1_fixp
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
	subl	$92, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L6$pb
.L6$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L6$pb), %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB6_1
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #       Child Loop BB6_5 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB6_3
.LBB6_3:                                # %for.cond4
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_5 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_10
# %bb.4:                                # %for.body6
                                        #   in Loop: Header=BB6_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB6_5
.LBB6_5:                                # %for.cond7
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_8
# %bb.6:                                # %for.body9
                                        #   in Loop: Header=BB6_5 Depth=3
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %esi                 # 4-byte Reload
	movl	-44(%ebp), %edx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	%edx, %eax
	movl	%ecx, %edx
	subl	%esi, %edx
	addl	%edx, %eax
	shll	$23, %eax
	movl	$10, %edx
	shll	$27, %edx
	sarl	$3, %eax
	sarl	$7, %edx
	imull	%edx
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	movl	%edx, %eax
	movl	-84(%ebp), %edx                 # 4-byte Reload
	shrdl	$20, %eax, %edx
	shll	$29, %ecx
	shrl	$1, %ecx
	sarl	$8, %ecx
	movl	%ecx, -72(%ebp)                 # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$20, %ecx
	movl	%ecx, -80(%ebp)                 # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$20, %edx, %ecx
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
	movl	-32(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB6_14
# %bb.13:                               # %for.body9
                                        #   in Loop: Header=BB6_5 Depth=3
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
.LBB6_14:                               # %for.body9
                                        #   in Loop: Header=BB6_5 Depth=3
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %esi                 # 4-byte Reload
	movl	-36(%ebp), %edi                 # 4-byte Reload
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	-56(%ebp), %edx                 # 4-byte Reload
	imull	$100, %edi, %eax
	addl	%eax, %ebx
	imull	$20, %esi, %eax
	addl	%eax, %ebx
	movl	%edx, %eax
	shll	$7, %eax
	movl	%eax, (%ebx,%ecx,4)
	movl	-24(%ebp), %eax                 # 4-byte Reload
	imull	$100, %edi, %edi
	addl	%edi, %eax
	imull	$20, %esi, %esi
	addl	%esi, %eax
	shll	$7, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=3
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB6_5
.LBB6_8:                                # %for.end
                                        #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_9
.LBB6_9:                                # %for.inc17
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB6_3
.LBB6_10:                               # %for.end19
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_11
.LBB6_11:                               # %for.inc20
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB6_1
.LBB6_12:                               # %for.end22
	addl	$92, %esp
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
	.type	A_float,@object                 # @A_float
	.bss
	.globl	A_float
	.p2align	2
A_float:
	.zero	500
	.size	A_float, 500

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%0.16f "
	.size	.L.str.5, 8

	.ident	"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym print_array
	.addrsig_sym fprintf
	.addrsig_sym kernel_heat_3d.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym A_float
	.addrsig_sym stderr

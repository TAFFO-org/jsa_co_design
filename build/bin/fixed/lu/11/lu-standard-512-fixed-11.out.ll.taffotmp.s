	.text
	.file	"lu.c"
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
	.globl	scale_scalar                    # -- Begin function scale_scalar
	.p2align	4, 0x90
	.type	scale_scalar,@function
scale_scalar:                           # @scale_scalar
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
	.size	scale_scalar, .Lfunc_end1-scale_scalar
	.cfi_endproc
                                        # -- End function
	.globl	scale_1d                        # -- Begin function scale_1d
	.p2align	4, 0x90
	.type	scale_1d,@function
scale_1d:                               # @scale_1d
	.cfi_startproc
# %bb.0:                                # %entry
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB2_1
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %ecx                 # 4-byte Reload
	movl	-8(%ebp), %eax                  # 4-byte Reload
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB2_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-20(%ebp), %edx                 # 4-byte Reload
	flds	(%eax,%ecx,4)
	movl	%edx, -4(%ebp)
	fildl	-4(%ebp)
	fmulp	%st, %st(1)
	fstps	(%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
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
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$36, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
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
	jmp	.LBB3_1
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB3_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %for.cond1
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB3_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-44(%ebp), %ecx                 # 4-byte Reload
	movl	-32(%ebp), %edx                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %edi                 # 4-byte Reload
	movl	-36(%ebp), %esi                 # 4-byte Reload
	imull	%edi, %esi
	leal	(%eax,%esi,4), %eax
	flds	(%eax,%ecx,4)
	movl	%edx, -12(%ebp)
	fildl	-12(%ebp)
	fmulp	%st, %st(1)
	fstps	(%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc7
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB3_1
.LBB3_8:                                # %for.end9
	addl	$36, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
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
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	jmp	.LBB4_1
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #       Child Loop BB4_5 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-20(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %for.cond1
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_5 Depth 3
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_10
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB4_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # %for.cond4
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_8
# %bb.6:                                # %for.body6
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	-60(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	movl	-32(%ebp), %edi                 # 4-byte Reload
	movl	-52(%ebp), %esi                 # 4-byte Reload
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	imull	%edi, %eax
	imull	%eax, %ebx
	movl	-36(%ebp), %eax                 # 4-byte Reload
	leal	(%eax,%ebx,4), %eax
	imull	%edi, %esi
	leal	(%eax,%esi,4), %eax
	flds	(%eax,%ecx,4)
	movl	%edx, -16(%ebp)
	fildl	-16(%ebp)
	fmulp	%st, %st(1)
	fstps	(%eax,%ecx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	-60(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jmp	.LBB4_5
.LBB4_8:                                # %for.end
                                        #   in Loop: Header=BB4_3 Depth=2
	jmp	.LBB4_9
.LBB4_9:                                # %for.inc12
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB4_3
.LBB4_10:                               # %for.end14
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc15
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	jmp	.LBB4_1
.LBB4_12:                               # %for.end17
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
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
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
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
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end6:
	.size	timer_stop, .Lfunc_end6-timer_stop
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function main
.LCPI7_0:
	.long	0x49000000                      # float 524288
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
	subl	$1648, %esp                     # imm = 0x670
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	calll	.L7$pb
.L7$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L7$pb), %ebx
	movl	%ebx, -1624(%ebp)               # 4-byte Spill
	leal	-1608(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	calll	init_array.2_fixp
	movl	-1624(%ebp), %ebx               # 4-byte Reload
	leal	-1608(%ebp), %eax
	movl	$20, (%esp)
	movl	$20, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$512, 12(%esp)                  # imm = 0x200
	calll	scale_2d.3_fixp
	movl	-1624(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-1624(%ebp), %ebx               # 4-byte Reload
	leal	-1608(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	calll	kernel_lu.1_fixp
	movl	-1624(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -1620(%ebp)               # 4-byte Spill
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	-1620(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1628(%ebp)               # 4-byte Spill
	cmpl	$20, %eax
	jge	.LBB7_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1632(%ebp)               # 4-byte Spill
	jmp	.LBB7_3
.LBB7_3:                                # %for.cond4
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1628(%ebp), %ecx               # 4-byte Reload
	movl	-1632(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1636(%ebp)               # 4-byte Spill
	cmpl	%ecx, %eax
	jg	.LBB7_6
# %bb.4:                                # %for.body6
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-1636(%ebp), %ecx               # 4-byte Reload
	movl	-1624(%ebp), %eax               # 4-byte Reload
	movl	-1628(%ebp), %edx               # 4-byte Reload
	shll	$4, %edx
	leal	(%edx,%edx,4), %edx
	leal	-1608(%ebp,%edx), %esi
	movl	(%esi,%ecx,4), %esi
	movl	%esi, -1616(%ebp)
	movl	$0, -1612(%ebp)
	fildll	-1616(%ebp)
	flds	.LCPI7_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	leal	A_float@GOTOFF(%eax,%edx), %eax
	fstps	(%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-1636(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1632(%ebp)               # 4-byte Spill
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %for.inc10
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-1628(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1620(%ebp)               # 4-byte Spill
	jmp	.LBB7_1
.LBB7_8:                                # %for.end12
	movl	-1624(%ebp), %ebx               # 4-byte Reload
	leal	A_float@GOTOFF(%ebx), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$1648, %esp                     # imm = 0x670
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
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
	calll	.L8$pb
.L8$pb:
	popl	%eax
.Ltmp2:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp2-.L8$pb), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	jmp	.LBB8_1
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-12(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB8_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	jmp	.LBB8_3
.LBB8_3:                                # %for.cond1
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB8_8
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-36(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %edx                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	addl	%ecx, %eax
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-24(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.4@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB8_6:                                # %if.end
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-24(%ebp), %ebx                 # 4-byte Reload
	movl	-36(%ebp), %edx                 # 4-byte Reload
	movl	-20(%ebp), %eax                 # 4-byte Reload
	movl	-28(%ebp), %esi                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	leal	(%esi,%esi,4), %esi
	shll	$4, %esi
	addl	%esi, %eax
	flds	(%eax,%edx,4)
	leal	.L.str.5@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.5@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	fprintf@PLT
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	jmp	.LBB8_3
.LBB8_8:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_9
.LBB8_9:                                # %for.inc7
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-28(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	jmp	.LBB8_1
.LBB8_10:                               # %for.end9
	addl	$48, %esp
	popl	%esi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end8:
	.size	print_array, .Lfunc_end8-print_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_lu.1_fixp
	.type	kernel_lu.1_fixp,@function
kernel_lu.1_fixp:                       # @kernel_lu.1_fixp
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
	subl	$108, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L9$pb
.L9$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L9$pb), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB9_1
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
                                        #       Child Loop BB9_5 Depth 3
                                        #     Child Loop BB9_11 Depth 2
                                        #       Child Loop BB9_13 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_20
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB9_3
.LBB9_3:                                # %for.cond1
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_5 Depth 3
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_10
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB9_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB9_5
.LBB9_5:                                # %for.cond4
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_8
# %bb.6:                                # %for.body6
                                        #   in Loop: Header=BB9_5 Depth=3
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-24(%ebp), %edx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-48(%ebp), %esi                 # 4-byte Reload
	imull	$80, %eax, %edi
	movl	%edx, %eax
	addl	%edi, %eax
	movl	(%eax,%esi,4), %eax
	imull	$80, %esi, %esi
	addl	%esi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$12, %eax
	sarl	$12, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-32(%ebp), %edx                 # 4-byte Reload
	shrdl	$6, %edi, %esi
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %edx
	shrl	$13, %edx
	subl	%esi, %edx
	shll	$13, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB9_5 Depth=3
	movl	-48(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB9_5
.LBB9_8:                                # %for.end
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-32(%ebp), %esi                 # 4-byte Reload
	imull	$80, %edx, %edi
	movl	%eax, %ecx
	addl	%edi, %ecx
	movl	(%ecx,%edx,4), %ecx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	movl	(%eax,%edx,4), %edx
	shrl	$1, %edx
	shrl	$1, %ecx
	sarl	$3, %edx
	sarl	$3, %ecx
	movl	%ecx, -68(%ebp)                 # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$15, %ecx
	movl	%ecx, -76(%ebp)                 # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$15, %edx, %ecx
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
	movl	-28(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB9_22
# %bb.21:                               # %for.end
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
.LBB9_22:                               # %for.end
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-80(%ebp), %eax                 # 4-byte Reload
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	shll	$1, %edx
	shll	$3, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc17
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB9_3
.LBB9_10:                               # %for.end19
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jmp	.LBB9_11
.LBB9_11:                               # %for.cond20
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_13 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-84(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_18
# %bb.12:                               # %for.body22
                                        #   in Loop: Header=BB9_11 Depth=2
	xorl	%eax, %eax
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	jmp	.LBB9_13
.LBB9_13:                               # %for.cond23
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-92(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_16
# %bb.14:                               # %for.body25
                                        #   in Loop: Header=BB9_13 Depth=3
	movl	-88(%ebp), %ecx                 # 4-byte Reload
	movl	-24(%ebp), %edx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-96(%ebp), %esi                 # 4-byte Reload
	imull	$80, %eax, %edi
	movl	%edx, %eax
	addl	%edi, %eax
	movl	(%eax,%esi,4), %eax
	imull	$80, %esi, %esi
	addl	%esi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$12, %eax
	sarl	$12, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-32(%ebp), %edx                 # 4-byte Reload
	shrdl	$6, %edi, %esi
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %edx
	shrl	$13, %edx
	subl	%esi, %edx
	shll	$13, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.15:                               # %for.inc36
                                        #   in Loop: Header=BB9_13 Depth=3
	movl	-96(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	jmp	.LBB9_13
.LBB9_16:                               # %for.end38
                                        #   in Loop: Header=BB9_11 Depth=2
	jmp	.LBB9_17
.LBB9_17:                               # %for.inc39
                                        #   in Loop: Header=BB9_11 Depth=2
	movl	-88(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jmp	.LBB9_11
.LBB9_18:                               # %for.end41
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_19
.LBB9_19:                               # %for.inc42
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB9_1
.LBB9_20:                               # %for.end44
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end9:
	.size	kernel_lu.1_fixp, .Lfunc_end9-kernel_lu.1_fixp
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
	subl	$1740, %esp                     # imm = 0x6CC
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L10$pb
.L10$pb:
	popl	%eax
.Ltmp4:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp4-.L10$pb), %eax
	movl	%eax, -1628(%ebp)               # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -1624(%ebp)               # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -1620(%ebp)               # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -1616(%ebp)               # 4-byte Spill
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
                                        #     Child Loop BB10_7 Depth 2
	movl	-1620(%ebp), %ecx               # 4-byte Reload
	movl	-1616(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1632(%ebp)               # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1636(%ebp)               # 4-byte Spill
	jmp	.LBB10_3
.LBB10_3:                               # %for.cond3
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1632(%ebp), %ecx               # 4-byte Reload
	movl	-1636(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1640(%ebp)               # 4-byte Spill
	cmpl	%ecx, %eax
	jg	.LBB10_6
# %bb.4:                                # %for.body5
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-1628(%ebp), %ebx               # 4-byte Reload
	movl	-1620(%ebp), %ecx               # 4-byte Reload
	movl	-1640(%ebp), %edx               # 4-byte Reload
	xorl	%eax, %eax
	subl	%edx, %eax
	cltd
	idivl	%ecx
	shll	$26, %edx
	shll	$27, %ecx
	shrl	$1, %ecx
	movl	%ecx, -1660(%ebp)               # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -1668(%ebp)               # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -1664(%ebp)               # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-1668(%ebp), %ebx               # 4-byte Reload
	movl	-1664(%ebp), %ecx               # 4-byte Reload
	movl	%eax, %edi
	movl	-1660(%ebp), %eax               # 4-byte Reload
	movl	%edi, -1656(%ebp)               # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-1656(%ebp), %eax               # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-1628(%ebp), %ebx               # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -1649(%ebp)                # 1-byte Spill
	calll	__divdi3@PLT
	movb	-1649(%ebp), %cl                # 1-byte Reload
	movl	%eax, -1648(%ebp)               # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -1644(%ebp)               # 4-byte Spill
	jne	.LBB10_42
# %bb.41:                               # %for.body5
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-1648(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1644(%ebp)               # 4-byte Spill
.LBB10_42:                              # %for.body5
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-1640(%ebp), %ecx               # 4-byte Reload
	movl	-1624(%ebp), %eax               # 4-byte Reload
	movl	-1632(%ebp), %esi               # 4-byte Reload
	movl	-1644(%ebp), %edx               # 4-byte Reload
	shll	$3, %edx
	movl	$2147483648, %edi               # imm = 0x80000000
	shrl	$2, %edi
	addl	%edi, %edx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	sarl	$10, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-1640(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1636(%ebp)               # 4-byte Spill
	jmp	.LBB10_3
.LBB10_6:                               # %for.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-1632(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1672(%ebp)               # 4-byte Spill
.LBB10_7:                               # %for.cond9
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1620(%ebp), %ecx               # 4-byte Reload
	movl	-1672(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1676(%ebp)               # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_10
# %bb.8:                                # %for.body12
                                        #   in Loop: Header=BB10_7 Depth=2
	movl	-1676(%ebp), %ecx               # 4-byte Reload
	movl	-1624(%ebp), %eax               # 4-byte Reload
	movl	-1632(%ebp), %edx               # 4-byte Reload
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
# %bb.9:                                # %for.inc15
                                        #   in Loop: Header=BB10_7 Depth=2
	movl	-1676(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1672(%ebp)               # 4-byte Spill
	jmp	.LBB10_7
.LBB10_10:                              # %for.end17
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-1632(%ebp), %ecx               # 4-byte Reload
	movl	-1624(%ebp), %eax               # 4-byte Reload
	imull	$80, %ecx, %edx
	addl	%edx, %eax
	movl	$524288, (%eax,%ecx,4)          # imm = 0x80000
# %bb.11:                               # %for.inc20
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-1632(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1616(%ebp)               # 4-byte Spill
	jmp	.LBB10_1
.LBB10_12:                              # %for.end22
	xorl	%eax, %eax
	movl	%eax, -1680(%ebp)               # 4-byte Spill
	jmp	.LBB10_13
.LBB10_13:                              # %for.cond24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_15 Depth 2
	movl	-1620(%ebp), %ecx               # 4-byte Reload
	movl	-1680(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1684(%ebp)               # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_20
# %bb.14:                               # %for.body27
                                        #   in Loop: Header=BB10_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1688(%ebp)               # 4-byte Spill
	jmp	.LBB10_15
.LBB10_15:                              # %for.cond28
                                        #   Parent Loop BB10_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1620(%ebp), %ecx               # 4-byte Reload
	movl	-1688(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1692(%ebp)               # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_18
# %bb.16:                               # %for.body31
                                        #   in Loop: Header=BB10_15 Depth=2
	movl	-1692(%ebp), %ecx               # 4-byte Reload
	movl	-1684(%ebp), %edx               # 4-byte Reload
	leal	-1612(%ebp), %eax
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
# %bb.17:                               # %for.inc34
                                        #   in Loop: Header=BB10_15 Depth=2
	movl	-1692(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1688(%ebp)               # 4-byte Spill
	jmp	.LBB10_15
.LBB10_18:                              # %for.end36
                                        #   in Loop: Header=BB10_13 Depth=1
	jmp	.LBB10_19
.LBB10_19:                              # %for.inc37
                                        #   in Loop: Header=BB10_13 Depth=1
	movl	-1684(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1680(%ebp)               # 4-byte Spill
	jmp	.LBB10_13
.LBB10_20:                              # %for.end39
	xorl	%eax, %eax
	movl	%eax, -1696(%ebp)               # 4-byte Spill
	jmp	.LBB10_21
.LBB10_21:                              # %for.cond40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_23 Depth 2
                                        #       Child Loop BB10_25 Depth 3
	movl	-1620(%ebp), %ecx               # 4-byte Reload
	movl	-1696(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1700(%ebp)               # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_32
# %bb.22:                               # %for.body43
                                        #   in Loop: Header=BB10_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1704(%ebp)               # 4-byte Spill
	jmp	.LBB10_23
.LBB10_23:                              # %for.cond44
                                        #   Parent Loop BB10_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_25 Depth 3
	movl	-1620(%ebp), %ecx               # 4-byte Reload
	movl	-1704(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1708(%ebp)               # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_30
# %bb.24:                               # %for.body47
                                        #   in Loop: Header=BB10_23 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1712(%ebp)               # 4-byte Spill
	jmp	.LBB10_25
.LBB10_25:                              # %for.cond48
                                        #   Parent Loop BB10_21 Depth=1
                                        #     Parent Loop BB10_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1620(%ebp), %ecx               # 4-byte Reload
	movl	-1712(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1716(%ebp)               # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_28
# %bb.26:                               # %for.body51
                                        #   in Loop: Header=BB10_25 Depth=3
	movl	-1716(%ebp), %ecx               # 4-byte Reload
	movl	-1708(%ebp), %esi               # 4-byte Reload
	movl	-1700(%ebp), %edi               # 4-byte Reload
	movl	-1624(%ebp), %edx               # 4-byte Reload
	imull	$80, %esi, %ebx
	movl	%edx, %eax
	addl	%ebx, %eax
	movl	(%eax,%edi,4), %eax
	imull	$80, %ecx, %ebx
	addl	%ebx, %edx
	movl	(%edx,%edi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$12, %eax
	sarl	$12, %edx
	imull	%edx
	movl	%eax, -1720(%ebp)               # 4-byte Spill
	movl	%edx, %eax
	movl	-1720(%ebp), %edx               # 4-byte Reload
	shrdl	$6, %eax, %edx
	shll	$1, %edx
	leal	-1612(%ebp), %eax
	imull	$80, %esi, %esi
	addl	%esi, %eax
	addl	(%eax,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.27:                               # %for.inc59
                                        #   in Loop: Header=BB10_25 Depth=3
	movl	-1716(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1712(%ebp)               # 4-byte Spill
	jmp	.LBB10_25
.LBB10_28:                              # %for.end61
                                        #   in Loop: Header=BB10_23 Depth=2
	jmp	.LBB10_29
.LBB10_29:                              # %for.inc62
                                        #   in Loop: Header=BB10_23 Depth=2
	movl	-1708(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1704(%ebp)               # 4-byte Spill
	jmp	.LBB10_23
.LBB10_30:                              # %for.end64
                                        #   in Loop: Header=BB10_21 Depth=1
	jmp	.LBB10_31
.LBB10_31:                              # %for.inc65
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-1700(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1696(%ebp)               # 4-byte Spill
	jmp	.LBB10_21
.LBB10_32:                              # %for.end67
	xorl	%eax, %eax
	movl	%eax, -1724(%ebp)               # 4-byte Spill
	jmp	.LBB10_33
.LBB10_33:                              # %for.cond68
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_35 Depth 2
	movl	-1620(%ebp), %ecx               # 4-byte Reload
	movl	-1724(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1728(%ebp)               # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_40
# %bb.34:                               # %for.body71
                                        #   in Loop: Header=BB10_33 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1732(%ebp)               # 4-byte Spill
	jmp	.LBB10_35
.LBB10_35:                              # %for.cond72
                                        #   Parent Loop BB10_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1620(%ebp), %ecx               # 4-byte Reload
	movl	-1732(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1736(%ebp)               # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_38
# %bb.36:                               # %for.body75
                                        #   in Loop: Header=BB10_35 Depth=2
	movl	-1736(%ebp), %ecx               # 4-byte Reload
	movl	-1624(%ebp), %eax               # 4-byte Reload
	movl	-1728(%ebp), %esi               # 4-byte Reload
	leal	-1612(%ebp), %edx
	imull	$80, %esi, %edi
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	shll	$12, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.37:                               # %for.inc80
                                        #   in Loop: Header=BB10_35 Depth=2
	movl	-1736(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1732(%ebp)               # 4-byte Spill
	jmp	.LBB10_35
.LBB10_38:                              # %for.end82
                                        #   in Loop: Header=BB10_33 Depth=1
	jmp	.LBB10_39
.LBB10_39:                              # %for.inc83
                                        #   in Loop: Header=BB10_33 Depth=1
	movl	-1728(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1724(%ebp)               # 4-byte Spill
	jmp	.LBB10_33
.LBB10_40:                              # %for.end85
	addl	$1740, %esp                     # imm = 0x6CC
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end10:
	.size	init_array.2_fixp, .Lfunc_end10-init_array.2_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_2d.3_fixp
	.type	scale_2d.3_fixp,@function
scale_2d.3_fixp:                        # @scale_2d.3_fixp
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
	subl	$36, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
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
	jmp	.LBB11_1
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB11_3
.LBB11_3:                               # %for.cond1
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-44(%ebp), %ecx                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %edi                 # 4-byte Reload
	movl	-36(%ebp), %esi                 # 4-byte Reload
	movl	-32(%ebp), %edx                 # 4-byte Reload
	movl	%esi, %ebx
	imull	%edi, %ebx
	shll	$2, %ebx
	addl	%ebx, %eax
	movl	(%eax,%ecx,4), %eax
	shll	$22, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$9, %eax
	sarl	$12, %edx
	imull	%edx
	movl	%eax, %ebx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, -48(%ebp)                 # 4-byte Spill
	movl	%edx, %ebx
	movl	-48(%ebp), %edx                 # 4-byte Reload
	shrdl	$9, %ebx, %edx
	shll	$1, %edx
	imull	%edi, %esi
	shll	$2, %esi
	addl	%esi, %eax
	shll	$9, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB11_3
.LBB11_6:                               # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               # %for.inc7
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB11_1
.LBB11_8:                               # %for.end9
	addl	$36, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end11:
	.size	scale_2d.3_fixp, .Lfunc_end11-scale_2d.3_fixp
	.cfi_endproc
                                        # -- End function
	.type	A_float,@object                 # @A_float
	.bss
	.globl	A_float
	.p2align	2
A_float:
	.zero	1600
	.size	A_float, 1600

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%0.16f "
	.size	.L.str.5, 8

	.ident	"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym print_array
	.addrsig_sym fprintf
	.addrsig_sym kernel_lu.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym scale_2d.3_fixp
	.addrsig_sym A_float
	.addrsig_sym stderr

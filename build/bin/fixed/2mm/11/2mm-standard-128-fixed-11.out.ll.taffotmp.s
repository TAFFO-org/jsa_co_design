	.text
	.file	"2mm.c"
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
	.long	0x42800000                      # float 64
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
	subl	$2300, %esp                     # imm = 0x8FC
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L7$pb
.L7$pb:
	popl	%eax
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L7$pb), %eax
	movl	%eax, -2232(%ebp)               # 4-byte Spill
	leal	-724(%ebp), %edi
	leal	-1204(%ebp), %esi
	leal	-1764(%ebp), %edx
	leal	-2212(%ebp), %ecx
	leal	-340(%ebp), %eax
	movl	%eax, -2244(%ebp)               # 4-byte Spill
	leal	-16(%ebp), %eax
	leal	-20(%ebp), %ebx
	movl	$8, (%esp)
	movl	$10, 4(%esp)
	movl	$12, 8(%esp)
	movl	$14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	-2244(%ebp), %eax               # 4-byte Reload
	movl	%ebx, 20(%esp)
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	movl	%edi, 24(%esp)
	movl	%esi, 28(%esp)
	movl	%edx, 32(%esp)
	movl	%ecx, 36(%esp)
	movl	%eax, 40(%esp)
	calll	init_array.4_fixp
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	$128, 4(%esp)
	calll	scale_scalar.1_fixp
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	$128, 4(%esp)
	calll	scale_scalar.1_fixp
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	leal	-724(%ebp), %eax
	movl	$8, (%esp)
	movl	$12, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$128, 12(%esp)
	calll	scale_2d.6_fixp
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	leal	-1204(%ebp), %eax
	movl	$12, (%esp)
	movl	$10, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$128, 12(%esp)
	calll	scale_2d.6_fixp
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	leal	-1764(%ebp), %eax
	movl	$10, (%esp)
	movl	$14, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$128, 12(%esp)
	calll	scale_2d.6_fixp
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	leal	-2212(%ebp), %eax
	movl	$8, (%esp)
	movl	$14, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$128, 12(%esp)
	calll	scale_2d.9_fixp
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	leal	-340(%ebp), %eax
	movl	$8, (%esp)
	movl	$10, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$128, 12(%esp)
	calll	scale_2d.5_fixp
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-16(%ebp), %eax
	movl	%eax, -2240(%ebp)               # 4-byte Spill
	movl	-20(%ebp), %ebx
	leal	-340(%ebp), %edi
	leal	-724(%ebp), %esi
	leal	-1204(%ebp), %edx
	leal	-1764(%ebp), %ecx
	leal	-2212(%ebp), %eax
	movl	%eax, -2236(%ebp)               # 4-byte Spill
	movl	-2240(%ebp), %eax               # 4-byte Reload
	movl	$8, (%esp)
	movl	$10, 4(%esp)
	movl	$12, 8(%esp)
	movl	$14, 12(%esp)
	movl	%eax, 16(%esp)
	movl	-2236(%ebp), %eax               # 4-byte Reload
	movl	%ebx, 20(%esp)
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	movl	%edi, 24(%esp)
	movl	%esi, 28(%esp)
	movl	%edx, 32(%esp)
	movl	%ecx, 36(%esp)
	movl	%eax, 40(%esp)
	calll	kernel_2mm.3_fixp
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -2228(%ebp)               # 4-byte Spill
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	-2228(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2248(%ebp)               # 4-byte Spill
	cmpl	$8, %eax
	jge	.LBB7_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2252(%ebp)               # 4-byte Spill
	jmp	.LBB7_3
.LBB7_3:                                # %for.cond22
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2252(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2256(%ebp)               # 4-byte Spill
	cmpl	$14, %eax
	jge	.LBB7_6
# %bb.4:                                # %for.body24
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-2256(%ebp), %ecx               # 4-byte Reload
	movl	-2232(%ebp), %eax               # 4-byte Reload
	movl	-2248(%ebp), %edx               # 4-byte Reload
	imull	$56, %edx, %edx
	leal	-2212(%ebp,%edx), %esi
	movl	(%esi,%ecx,4), %esi
	movl	%esi, -2224(%ebp)
	movl	$0, -2220(%ebp)
	fildll	-2224(%ebp)
	flds	.LCPI7_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	leal	D_float@GOTOFF(%eax,%edx), %eax
	fstps	(%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-2256(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2252(%ebp)               # 4-byte Spill
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %for.inc28
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-2248(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2228(%ebp)               # 4-byte Spill
	jmp	.LBB7_1
.LBB7_8:                                # %for.end30
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	leal	D_float@GOTOFF(%ebx), %eax
	movl	$8, (%esp)
	movl	$14, 4(%esp)
	movl	%eax, 8(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$2300, %esp                     # imm = 0x8FC
	popl	%esi
	popl	%edi
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
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
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
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB8_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB8_3
.LBB8_3:                                # %for.cond1
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB8_8
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %edx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	addl	%ecx, %eax
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.10@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB8_6:                                # %if.end
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-32(%ebp), %esi                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	imull	$56, %esi, %esi
	addl	%esi, %eax
	flds	(%eax,%edx,4)
	leal	.L.str.11@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.11@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	fprintf@PLT
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB8_3
.LBB8_8:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_9
.LBB8_9:                                # %for.inc7
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
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
	.p2align	4, 0x90                         # -- Begin function scale_scalar.1_fixp
	.type	scale_scalar.1_fixp,@function
scale_scalar.1_fixp:                    # @scale_scalar.1_fixp
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
.Lfunc_end9:
	.size	scale_scalar.1_fixp, .Lfunc_end9-scale_scalar.1_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_2mm.3_fixp
	.type	kernel_2mm.3_fixp,@function
kernel_2mm.3_fixp:                      # @kernel_2mm.3_fixp
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
	jmp	.LBB10_1
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
                                        #       Child Loop BB10_5 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	jmp	.LBB10_3
.LBB10_3:                               # %for.cond1
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_5 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_10
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-72(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	-64(%ebp), %edx                 # 4-byte Reload
	imull	$40, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
.LBB10_5:                               # %for.cond5
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_8
# %bb.6:                                # %for.body7
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-72(%ebp), %ecx                 # 4-byte Reload
	movl	-64(%ebp), %esi                 # 4-byte Reload
	movl	-80(%ebp), %edi                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-48(%ebp), %edx                 # 4-byte Reload
	imull	$48, %esi, %ebx
	addl	%ebx, %edx
	movl	(%edx,%edi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$6, %eax
	sarl	$1, %edx
	imull	%edx
	movl	%edx, %ebx
	movl	-52(%ebp), %edx                 # 4-byte Reload
	shrdl	$23, %ebx, %eax
	shll	$1, %eax
	imull	$40, %edi, %edi
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$9, %eax
	sarl	$10, %edx
	imull	%edx
	movl	%eax, %edi
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -84(%ebp)                 # 4-byte Spill
	movl	%edx, %edi
	movl	-84(%ebp), %edx                 # 4-byte Reload
	shrdl	$14, %edi, %edx
	shll	$1, %edx
	imull	$40, %esi, %esi
	addl	%esi, %eax
	addl	(%eax,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-80(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	jmp	.LBB10_5
.LBB10_8:                               # %for.end
                                        #   in Loop: Header=BB10_3 Depth=2
	jmp	.LBB10_9
.LBB10_9:                               # %for.inc15
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-72(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	jmp	.LBB10_3
.LBB10_10:                              # %for.end17
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_11
.LBB10_11:                              # %for.inc18
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-64(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB10_1
.LBB10_12:                              # %for.end20
	xorl	%eax, %eax
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	jmp	.LBB10_13
.LBB10_13:                              # %for.cond21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_15 Depth 2
                                        #       Child Loop BB10_17 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-88(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_24
# %bb.14:                               # %for.body23
                                        #   in Loop: Header=BB10_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	jmp	.LBB10_15
.LBB10_15:                              # %for.cond24
                                        #   Parent Loop BB10_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_17 Depth 3
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-96(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -100(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_22
# %bb.16:                               # %for.body26
                                        #   in Loop: Header=BB10_15 Depth=2
	movl	-100(%ebp), %ecx                # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	-92(%ebp), %esi                 # 4-byte Reload
	imull	$56, %esi, %esi
	addl	%esi, %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	movl	(%eax,%ecx,4), %eax
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$24, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-112(%ebp), %eax                # 4-byte Reload
	movl	%esi, -108(%ebp)                # 4-byte Spill
	movl	%edx, %esi
	movl	-108(%ebp), %edx                # 4-byte Reload
	shrdl	$5, %esi, %edx
	shll	$1, %edx
	movl	%edx, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -104(%ebp)                # 4-byte Spill
.LBB10_17:                              # %for.cond30
                                        #   Parent Loop BB10_13 Depth=1
                                        #     Parent Loop BB10_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-104(%ebp), %eax                # 4-byte Reload
	movl	%eax, -116(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_20
# %bb.18:                               # %for.body32
                                        #   in Loop: Header=BB10_17 Depth=3
	movl	-100(%ebp), %ecx                # 4-byte Reload
	movl	-92(%ebp), %esi                 # 4-byte Reload
	movl	-56(%ebp), %edx                 # 4-byte Reload
	movl	-116(%ebp), %edi                # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	imull	$40, %esi, %ebx
	addl	%ebx, %eax
	movl	(%eax,%edi,4), %eax
	imull	$56, %edi, %edi
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$9, %eax
	sarl	$19, %edx
	imull	%edx
	movl	%eax, %edi
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -120(%ebp)                # 4-byte Spill
	movl	%edx, %edi
	movl	-120(%ebp), %edx                # 4-byte Reload
	shrdl	$5, %edi, %edx
	shll	$1, %edx
	imull	$56, %esi, %esi
	addl	%esi, %eax
	addl	(%eax,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.19:                               # %for.inc41
                                        #   in Loop: Header=BB10_17 Depth=3
	movl	-116(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -104(%ebp)                # 4-byte Spill
	jmp	.LBB10_17
.LBB10_20:                              # %for.end43
                                        #   in Loop: Header=BB10_15 Depth=2
	jmp	.LBB10_21
.LBB10_21:                              # %for.inc44
                                        #   in Loop: Header=BB10_15 Depth=2
	movl	-100(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	jmp	.LBB10_15
.LBB10_22:                              # %for.end46
                                        #   in Loop: Header=BB10_13 Depth=1
	jmp	.LBB10_23
.LBB10_23:                              # %for.inc47
                                        #   in Loop: Header=BB10_13 Depth=1
	movl	-92(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	jmp	.LBB10_13
.LBB10_24:                              # %for.end49
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end10:
	.size	kernel_2mm.3_fixp, .Lfunc_end10-kernel_2mm.3_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function init_array.4_fixp
	.type	init_array.4_fixp,@function
init_array.4_fixp:                      # @init_array.4_fixp
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
	subl	$252, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L11$pb
.L11$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L11$pb), %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	movl	48(%ebp), %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	movl	44(%ebp), %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	movl	40(%ebp), %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	movl	36(%ebp), %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	movl	32(%ebp), %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	movl	28(%ebp), %eax
	movl	24(%ebp), %ecx
	movl	20(%ebp), %edx
	movl	%edx, -32(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %edx
	movl	%edx, -28(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %edx
	movl	%edx, -24(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %edx
	movl	%edx, -20(%ebp)                 # 4-byte Spill
	movl	$1610612736, (%ecx)             # imm = 0x60000000
	movl	$1288490240, (%eax)             # imm = 0x4CCCCD00
	xorl	%eax, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	jmp	.LBB11_3
.LBB11_3:                               # %for.cond3
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-64(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_6
# %bb.4:                                # %for.body5
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-56(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-60(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	addl	$1, %eax
	cltd
	idivl	%ecx
	shll	$29, %edx
	shll	$28, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -88(%ebp)                 # 4-byte Spill
	sarl	$1, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$27, %ecx
	movl	%ecx, -96(%ebp)                 # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$27, %edx, %ecx
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
	movl	-56(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB11_42
# %bb.41:                               # %for.body5
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -72(%ebp)                 # 4-byte Spill
.LBB11_42:                              # %for.body5
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-68(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-60(%ebp), %esi                 # 4-byte Reload
	movl	-72(%ebp), %edx                 # 4-byte Reload
	shll	$2, %edx
	imull	$48, %esi, %esi
	addl	%esi, %eax
	shrl	$4, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-68(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	jmp	.LBB11_3
.LBB11_6:                               # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               # %for.inc8
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-60(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB11_1
.LBB11_8:                               # %for.end10
	xorl	%eax, %eax
	movl	%eax, -100(%ebp)                # 4-byte Spill
	jmp	.LBB11_9
.LBB11_9:                               # %for.cond11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_11 Depth 2
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-100(%ebp), %eax                # 4-byte Reload
	movl	%eax, -104(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_16
# %bb.10:                               # %for.body14
                                        #   in Loop: Header=BB11_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, -108(%ebp)                # 4-byte Spill
	jmp	.LBB11_11
.LBB11_11:                              # %for.cond15
                                        #   Parent Loop BB11_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-108(%ebp), %eax                # 4-byte Reload
	movl	%eax, -112(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_14
# %bb.12:                               # %for.body18
                                        #   in Loop: Header=BB11_11 Depth=2
	movl	-56(%ebp), %ebx                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-104(%ebp), %eax                # 4-byte Reload
	movl	-112(%ebp), %edx                # 4-byte Reload
	addl	$1, %edx
	imull	%edx, %eax
	cltd
	idivl	%ecx
	shll	$28, %edx
	shll	$28, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -132(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$27, %ecx
	movl	%ecx, -140(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$27, %edx, %ecx
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
	movl	-56(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB11_44
# %bb.43:                               # %for.body18
                                        #   in Loop: Header=BB11_11 Depth=2
	movl	-120(%ebp), %eax                # 4-byte Reload
	movl	%eax, -116(%ebp)                # 4-byte Spill
.LBB11_44:                              # %for.body18
                                        #   in Loop: Header=BB11_11 Depth=2
	movl	-112(%ebp), %ecx                # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	-104(%ebp), %esi                # 4-byte Reload
	movl	-116(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	imull	$40, %esi, %esi
	addl	%esi, %eax
	shrl	$6, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.13:                               # %for.inc27
                                        #   in Loop: Header=BB11_11 Depth=2
	movl	-112(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -108(%ebp)                # 4-byte Spill
	jmp	.LBB11_11
.LBB11_14:                              # %for.end29
                                        #   in Loop: Header=BB11_9 Depth=1
	jmp	.LBB11_15
.LBB11_15:                              # %for.inc30
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	-104(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -100(%ebp)                # 4-byte Spill
	jmp	.LBB11_9
.LBB11_16:                              # %for.end32
	xorl	%eax, %eax
	movl	%eax, -144(%ebp)                # 4-byte Spill
	jmp	.LBB11_17
.LBB11_17:                              # %for.cond33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_19 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-144(%ebp), %eax                # 4-byte Reload
	movl	%eax, -148(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_24
# %bb.18:                               # %for.body36
                                        #   in Loop: Header=BB11_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, -152(%ebp)                # 4-byte Spill
	jmp	.LBB11_19
.LBB11_19:                              # %for.cond37
                                        #   Parent Loop BB11_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-152(%ebp), %eax                # 4-byte Reload
	movl	%eax, -156(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_22
# %bb.20:                               # %for.body40
                                        #   in Loop: Header=BB11_19 Depth=2
	movl	-56(%ebp), %ebx                 # 4-byte Reload
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-148(%ebp), %eax                # 4-byte Reload
	movl	-156(%ebp), %edx                # 4-byte Reload
	addl	$3, %edx
	imull	%edx, %eax
	addl	$1, %eax
	cltd
	idivl	%ecx
	shll	$28, %edx
	shll	$28, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -176(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$27, %ecx
	movl	%ecx, -184(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$27, %edx, %ecx
	movl	%ecx, -180(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-184(%ebp), %ebx                # 4-byte Reload
	movl	-180(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-176(%ebp), %eax                # 4-byte Reload
	movl	%edi, -172(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-172(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-56(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -165(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-165(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -164(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -160(%ebp)                # 4-byte Spill
	jne	.LBB11_46
# %bb.45:                               # %for.body40
                                        #   in Loop: Header=BB11_19 Depth=2
	movl	-164(%ebp), %eax                # 4-byte Reload
	movl	%eax, -160(%ebp)                # 4-byte Spill
.LBB11_46:                              # %for.body40
                                        #   in Loop: Header=BB11_19 Depth=2
	movl	-156(%ebp), %ecx                # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	-148(%ebp), %esi                # 4-byte Reload
	movl	-160(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	imull	$56, %esi, %esi
	addl	%esi, %eax
	shrl	$6, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.21:                               # %for.inc50
                                        #   in Loop: Header=BB11_19 Depth=2
	movl	-156(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -152(%ebp)                # 4-byte Spill
	jmp	.LBB11_19
.LBB11_22:                              # %for.end52
                                        #   in Loop: Header=BB11_17 Depth=1
	jmp	.LBB11_23
.LBB11_23:                              # %for.inc53
                                        #   in Loop: Header=BB11_17 Depth=1
	movl	-148(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -144(%ebp)                # 4-byte Spill
	jmp	.LBB11_17
.LBB11_24:                              # %for.end55
	xorl	%eax, %eax
	movl	%eax, -188(%ebp)                # 4-byte Spill
	jmp	.LBB11_25
.LBB11_25:                              # %for.cond56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_27 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-188(%ebp), %eax                # 4-byte Reload
	movl	%eax, -192(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_32
# %bb.26:                               # %for.body59
                                        #   in Loop: Header=BB11_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -196(%ebp)                # 4-byte Spill
	jmp	.LBB11_27
.LBB11_27:                              # %for.cond60
                                        #   Parent Loop BB11_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-196(%ebp), %eax                # 4-byte Reload
	movl	%eax, -200(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_30
# %bb.28:                               # %for.body63
                                        #   in Loop: Header=BB11_27 Depth=2
	movl	-56(%ebp), %ebx                 # 4-byte Reload
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-192(%ebp), %eax                # 4-byte Reload
	movl	-200(%ebp), %edx                # 4-byte Reload
	addl	$2, %edx
	imull	%edx, %eax
	cltd
	idivl	%ecx
	shll	$28, %edx
	shll	$28, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -220(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$27, %ecx
	movl	%ecx, -228(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$27, %edx, %ecx
	movl	%ecx, -224(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-228(%ebp), %ebx                # 4-byte Reload
	movl	-224(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-220(%ebp), %eax                # 4-byte Reload
	movl	%edi, -216(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-216(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-56(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -209(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-209(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -208(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -204(%ebp)                # 4-byte Spill
	jne	.LBB11_48
# %bb.47:                               # %for.body63
                                        #   in Loop: Header=BB11_27 Depth=2
	movl	-208(%ebp), %eax                # 4-byte Reload
	movl	%eax, -204(%ebp)                # 4-byte Spill
.LBB11_48:                              # %for.body63
                                        #   in Loop: Header=BB11_27 Depth=2
	movl	-200(%ebp), %ecx                # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-192(%ebp), %esi                # 4-byte Reload
	movl	-204(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	imull	$56, %esi, %esi
	addl	%esi, %eax
	shrl	$25, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.29:                               # %for.inc72
                                        #   in Loop: Header=BB11_27 Depth=2
	movl	-200(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -196(%ebp)                # 4-byte Spill
	jmp	.LBB11_27
.LBB11_30:                              # %for.end74
                                        #   in Loop: Header=BB11_25 Depth=1
	jmp	.LBB11_31
.LBB11_31:                              # %for.inc75
                                        #   in Loop: Header=BB11_25 Depth=1
	movl	-192(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -188(%ebp)                # 4-byte Spill
	jmp	.LBB11_25
.LBB11_32:                              # %for.end77
	xorl	%eax, %eax
	movl	%eax, -232(%ebp)                # 4-byte Spill
	jmp	.LBB11_33
.LBB11_33:                              # %for.cond78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_35 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-232(%ebp), %eax                # 4-byte Reload
	movl	%eax, -236(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_40
# %bb.34:                               # %for.body81
                                        #   in Loop: Header=BB11_33 Depth=1
	xorl	%eax, %eax
	movl	%eax, -240(%ebp)                # 4-byte Spill
	jmp	.LBB11_35
.LBB11_35:                              # %for.cond82
                                        #   Parent Loop BB11_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-240(%ebp), %eax                # 4-byte Reload
	movl	%eax, -244(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_38
# %bb.36:                               # %for.body85
                                        #   in Loop: Header=BB11_35 Depth=2
	movl	-244(%ebp), %ecx                # 4-byte Reload
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	-236(%ebp), %edx                # 4-byte Reload
	imull	$40, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
# %bb.37:                               # %for.inc88
                                        #   in Loop: Header=BB11_35 Depth=2
	movl	-244(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -240(%ebp)                # 4-byte Spill
	jmp	.LBB11_35
.LBB11_38:                              # %for.end90
                                        #   in Loop: Header=BB11_33 Depth=1
	jmp	.LBB11_39
.LBB11_39:                              # %for.inc91
                                        #   in Loop: Header=BB11_33 Depth=1
	movl	-236(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -232(%ebp)                # 4-byte Spill
	jmp	.LBB11_33
.LBB11_40:                              # %for.end93
	addl	$252, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end11:
	.size	init_array.4_fixp, .Lfunc_end11-init_array.4_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_2d.6_fixp
	.type	scale_2d.6_fixp,@function
scale_2d.6_fixp:                        # @scale_2d.6_fixp
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
	jmp	.LBB12_1
.LBB12_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB12_3
.LBB12_3:                               # %for.cond1
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB12_3 Depth=2
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
	shll	$24, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$7, %eax
	sarl	$6, %edx
	imull	%edx
	movl	%eax, %ebx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, -48(%ebp)                 # 4-byte Spill
	movl	%edx, %ebx
	movl	-48(%ebp), %edx                 # 4-byte Reload
	shrdl	$17, %ebx, %edx
	shll	$1, %edx
	imull	%edi, %esi
	shll	$2, %esi
	addl	%esi, %eax
	shll	$7, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=2
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB12_3
.LBB12_6:                               # %for.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_7
.LBB12_7:                               # %for.inc7
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB12_1
.LBB12_8:                               # %for.end9
	addl	$36, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end12:
	.size	scale_2d.6_fixp, .Lfunc_end12-scale_2d.6_fixp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function scale_2d.9_fixp
.LCPI13_0:
	.long	0x42800000                      # float 64
.LCPI13_1:
	.long	0x4b800000                      # float 16777216
	.text
	.p2align	4, 0x90
	.type	scale_2d.9_fixp,@function
scale_2d.9_fixp:                        # @scale_2d.9_fixp
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
	calll	.L13$pb
.L13$pb:
	popl	%eax
.Ltmp4:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp4-.L13$pb), %eax
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	movl	20(%ebp), %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB13_1
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB13_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	jmp	.LBB13_3
.LBB13_3:                               # %for.cond1
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%ebp), %ecx                 # 4-byte Reload
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB13_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-80(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-64(%ebp), %esi                 # 4-byte Reload
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	-56(%ebp), %ebx                 # 4-byte Reload
	movl	-72(%ebp), %edi                 # 4-byte Reload
	imull	%ebx, %edi
	leal	(%eax,%edi,4), %eax
	movl	(%eax,%ecx,4), %edi
	movl	%edi, -32(%ebp)
	movl	$0, -28(%ebp)
	fildll	-32(%ebp)
	flds	.LCPI13_0@GOTOFF(%edx)
	fdivr	%st, %st(1)
	shll	$24, %esi
	movl	%esi, -40(%ebp)
	movl	$0, -36(%ebp)
	fildll	-40(%ebp)
	flds	.LCPI13_1@GOTOFF(%edx)
	fdivrp	%st, %st(1)
	fmulp	%st, %st(2)
	fmulp	%st, %st(1)
	fnstcw	-42(%ebp)
	movzwl	-42(%ebp), %edx
	orl	$3072, %edx                     # imm = 0xC00
                                        # kill: def $dx killed $dx killed $edx
	movw	%dx, -44(%ebp)
	fldcw	-44(%ebp)
	fistpll	-24(%ebp)
	fldcw	-42(%ebp)
	movl	-24(%ebp), %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-80(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	jmp	.LBB13_3
.LBB13_6:                               # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_7
.LBB13_7:                               # %for.inc7
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-72(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB13_1
.LBB13_8:                               # %for.end9
	addl	$68, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end13:
	.size	scale_2d.9_fixp, .Lfunc_end13-scale_2d.9_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_2d.5_fixp
	.type	scale_2d.5_fixp,@function
scale_2d.5_fixp:                        # @scale_2d.5_fixp
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
	jmp	.LBB14_1
.LBB14_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB14_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB14_3
.LBB14_3:                               # %for.cond1
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB14_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB14_3 Depth=2
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
	shll	$24, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$7, %eax
	sarl	$16, %edx
	imull	%edx
	movl	%eax, %ebx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, -48(%ebp)                 # 4-byte Spill
	movl	%edx, %ebx
	movl	-48(%ebp), %edx                 # 4-byte Reload
	shrdl	$7, %ebx, %edx
	shll	$1, %edx
	imull	%edi, %esi
	shll	$2, %esi
	addl	%esi, %eax
	shll	$7, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=2
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB14_3
.LBB14_6:                               # %for.end
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_7
.LBB14_7:                               # %for.inc7
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB14_1
.LBB14_8:                               # %for.end9
	addl	$36, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end14:
	.size	scale_2d.5_fixp, .Lfunc_end14-scale_2d.5_fixp
	.cfi_endproc
                                        # -- End function
	.type	D_float,@object                 # @D_float
	.bss
	.globl	D_float
	.p2align	2
D_float:
	.zero	448
	.size	D_float, 448

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"\n"
	.size	.L.str.10, 2

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%0.16f "
	.size	.L.str.11, 8

	.ident	"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym print_array
	.addrsig_sym fprintf
	.addrsig_sym scale_scalar.1_fixp
	.addrsig_sym kernel_2mm.3_fixp
	.addrsig_sym init_array.4_fixp
	.addrsig_sym scale_2d.6_fixp
	.addrsig_sym scale_2d.9_fixp
	.addrsig_sym scale_2d.5_fixp
	.addrsig_sym D_float
	.addrsig_sym stderr

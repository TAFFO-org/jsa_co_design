	.text
	.file	"atax.c"
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
	.long	0x45000000                      # float 2048
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
	subl	$2064, %esp                     # imm = 0x810
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	calll	.L7$pb
.L7$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L7$pb), %ebx
	movl	%ebx, -2040(%ebp)               # 4-byte Spill
	leal	-1768(%ebp), %esi
	leal	-1856(%ebp), %edx
	leal	-1944(%ebp), %ecx
	leal	-2024(%ebp), %eax
	movl	$20, (%esp)
	movl	$22, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, 20(%esp)
	calll	init_array.5_fixp
	movl	-2040(%ebp), %ebx               # 4-byte Reload
	leal	-1768(%ebp), %eax
	movl	$20, (%esp)
	movl	$22, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$64, 12(%esp)
	calll	scale_2d.6_fixp
	movl	-2040(%ebp), %ebx               # 4-byte Reload
	leal	-1856(%ebp), %eax
	movl	$22, (%esp)
	movl	%eax, 4(%esp)
	movl	$64, 8(%esp)
	calll	scale_1d.1_fixp
	movl	-2040(%ebp), %ebx               # 4-byte Reload
	leal	-1944(%ebp), %eax
	movl	$22, (%esp)
	movl	%eax, 4(%esp)
	movl	$64, 8(%esp)
	calll	scale_1d.2_fixp
	movl	-2040(%ebp), %ebx               # 4-byte Reload
	leal	-2024(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$64, 8(%esp)
	calll	scale_1d.4_fixp
	movl	-2040(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-2040(%ebp), %ebx               # 4-byte Reload
	leal	-1768(%ebp), %esi
	leal	-1856(%ebp), %edx
	leal	-1944(%ebp), %ecx
	leal	-2024(%ebp), %eax
	movl	$20, (%esp)
	movl	$22, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, 20(%esp)
	calll	kernel_atax.3_fixp
	movl	-2040(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -2036(%ebp)               # 4-byte Spill
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-2036(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2044(%ebp)               # 4-byte Spill
	cmpl	$22, %eax
	jge	.LBB7_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-2040(%ebp), %eax               # 4-byte Reload
	movl	-2044(%ebp), %ecx               # 4-byte Reload
	movl	-1944(%ebp,%ecx,4), %edx
	movl	%edx, -2032(%ebp)
	movl	$0, -2028(%ebp)
	fildll	-2032(%ebp)
	flds	.LCPI7_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	fstps	y_float@GOTOFF(%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-2044(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2036(%ebp)               # 4-byte Spill
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	movl	-2040(%ebp), %ebx               # 4-byte Reload
	leal	y_float@GOTOFF(%ebx), %eax
	movl	$22, (%esp)
	movl	%eax, 4(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$2064, %esp                     # imm = 0x810
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
	subl	$36, %esp
	.cfi_offset %ebx, -12
	calll	.L8$pb
.L8$pb:
	popl	%eax
.Ltmp2:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp2-.L8$pb), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB8_1
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %ecx                 # 4-byte Reload
	movl	-8(%ebp), %eax                  # 4-byte Reload
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB8_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-20(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.7@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
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
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB8_1
.LBB8_6:                                # %for.end
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end8:
	.size	print_array, .Lfunc_end8-print_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_1d.1_fixp
	.type	scale_1d.1_fixp,@function
scale_1d.1_fixp:                        # @scale_1d.1_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$24, %esp
	.cfi_offset %esi, -12
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB9_1
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %ecx                 # 4-byte Reload
	movl	-8(%ebp), %eax                  # 4-byte Reload
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-20(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	shll	$25, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$6, %eax
	sarl	$6, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%esi, -28(%ebp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	-28(%ebp), %edx                 # 4-byte Reload
	shrdl	$18, %esi, %edx
	shll	$1, %edx
	shll	$6, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	addl	$24, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end9:
	.size	scale_1d.1_fixp, .Lfunc_end9-scale_1d.1_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_1d.2_fixp
	.type	scale_1d.2_fixp,@function
scale_1d.2_fixp:                        # @scale_1d.2_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$24, %esp
	.cfi_offset %esi, -12
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB10_1
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %ecx                 # 4-byte Reload
	movl	-8(%ebp), %eax                  # 4-byte Reload
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-20(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	shll	$25, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$6, %eax
	sarl	$20, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%esi, -28(%ebp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	-28(%ebp), %edx                 # 4-byte Reload
	shrdl	$4, %esi, %edx
	shll	$1, %edx
	shll	$6, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	addl	$24, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end10:
	.size	scale_1d.2_fixp, .Lfunc_end10-scale_1d.2_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_atax.3_fixp
	.type	kernel_atax.3_fixp,@function
kernel_atax.3_fixp:                     # @kernel_atax.3_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$64, %esp
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	movl	28(%ebp), %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	movl	24(%ebp), %eax
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
	jmp	.LBB11_1
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-12(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	$0, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	xorl	%eax, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB11_5
.LBB11_5:                               # %for.cond1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
                                        #     Child Loop BB11_11 Depth 2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_16
# %bb.6:                                # %for.body3
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-48(%ebp), %ecx                 # 4-byte Reload
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
.LBB11_7:                               # %for.cond5
                                        #   Parent Loop BB11_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_10
# %bb.8:                                # %for.body7
                                        #   in Loop: Header=BB11_7 Depth=2
	movl	-36(%ebp), %edi                 # 4-byte Reload
	movl	-48(%ebp), %ecx                 # 4-byte Reload
	movl	-28(%ebp), %edx                 # 4-byte Reload
	movl	-56(%ebp), %esi                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	(%edi,%ecx,4), %edi
	movl	%edi, -60(%ebp)                 # 4-byte Spill
	imull	$88, %ecx, %edi
	addl	%edi, %eax
	movl	(%eax,%esi,4), %eax
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$7, %eax
	sarl	$4, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-60(%ebp), %edx                 # 4-byte Reload
	shrdl	$20, %edi, %esi
	shll	$1, %esi
	shrl	$1, %edx
	shrl	$4, %esi
	addl	%esi, %edx
	shll	$1, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc13
                                        #   in Loop: Header=BB11_7 Depth=2
	movl	-56(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	jmp	.LBB11_7
.LBB11_10:                              # %for.end15
                                        #   in Loop: Header=BB11_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	jmp	.LBB11_11
.LBB11_11:                              # %for.cond16
                                        #   Parent Loop BB11_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-64(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_14
# %bb.12:                               # %for.body18
                                        #   in Loop: Header=BB11_11 Depth=2
	movl	-32(%ebp), %edi                 # 4-byte Reload
	movl	-68(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %edx                 # 4-byte Reload
	movl	-48(%ebp), %esi                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	(%edi,%ecx,4), %edi
	movl	%edi, -72(%ebp)                 # 4-byte Spill
	imull	$88, %esi, %edi
	addl	%edi, %eax
	movl	(%eax,%ecx,4), %eax
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$14, %eax
	sarl	$4, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-72(%ebp), %edx                 # 4-byte Reload
	shrdl	$13, %edi, %esi
	shll	$1, %esi
	shrl	$1, %edx
	shrl	$4, %esi
	addl	%esi, %edx
	shll	$1, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.13:                               # %for.inc26
                                        #   in Loop: Header=BB11_11 Depth=2
	movl	-68(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	jmp	.LBB11_11
.LBB11_14:                              # %for.end28
                                        #   in Loop: Header=BB11_5 Depth=1
	jmp	.LBB11_15
.LBB11_15:                              # %for.inc29
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	-48(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB11_5
.LBB11_16:                              # %for.end31
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end11:
	.size	kernel_atax.3_fixp, .Lfunc_end11-kernel_atax.3_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_1d.4_fixp
	.type	scale_1d.4_fixp,@function
scale_1d.4_fixp:                        # @scale_1d.4_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$24, %esp
	.cfi_offset %esi, -12
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB12_1
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %ecx                 # 4-byte Reload
	movl	-8(%ebp), %eax                  # 4-byte Reload
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-20(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	shll	$25, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$6, %eax
	sarl	$13, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%esi, -28(%ebp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	-28(%ebp), %edx                 # 4-byte Reload
	shrdl	$11, %esi, %edx
	shll	$1, %edx
	shll	$6, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	addl	$24, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end12:
	.size	scale_1d.4_fixp, .Lfunc_end12-scale_1d.4_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function init_array.5_fixp
	.type	init_array.5_fixp,@function
init_array.5_fixp:                      # @init_array.5_fixp
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
	subl	$140, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L13$pb
.L13$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L13$pb), %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	movl	28(%ebp), %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	movl	24(%ebp), %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %ecx
	movl	%ecx, -24(%ebp)                 # 4-byte Spill
	shll	$27, %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB13_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-48(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	shll	$27, %edx
	shrl	$1, %edx
	shrl	$1, %ecx
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
	movl	-48(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB13_14
# %bb.13:                               # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
.LBB13_14:                              # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %edx                 # 4-byte Reload
	movl	-56(%ebp), %edi                 # 4-byte Reload
	shll	$4, %edi
	movl	$2147483648, %esi               # imm = 0x80000000
	shrl	$1, %esi
	addl	%edi, %esi
	shrl	$5, %esi
	movl	%esi, (%edx,%ecx,4)
	movl	$0, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	xorl	%eax, %eax
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jmp	.LBB13_5
.LBB13_5:                               # %for.cond7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-84(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB13_12
# %bb.6:                                # %for.body10
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	-88(%ebp), %ecx                 # 4-byte Reload
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -92(%ebp)                 # 4-byte Spill
.LBB13_7:                               # %for.cond12
                                        #   Parent Loop BB13_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-92(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB13_10
# %bb.8:                                # %for.body15
                                        #   in Loop: Header=BB13_7 Depth=2
	movl	-48(%ebp), %ebx                 # 4-byte Reload
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-96(%ebp), %edx                 # 4-byte Reload
	movl	-88(%ebp), %eax                 # 4-byte Reload
	addl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-24(%ebp), %eax                 # 4-byte Reload
	shll	$27, %edx
	imull	$5, %eax, %ecx
	shll	$25, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -116(%ebp)                # 4-byte Spill
	sarl	$2, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$24, %ecx
	movl	%ecx, -124(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$24, %edx, %ecx
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
	movl	-48(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB13_16
# %bb.15:                               # %for.body15
                                        #   in Loop: Header=BB13_7 Depth=2
	movl	-104(%ebp), %eax                # 4-byte Reload
	movl	%eax, -100(%ebp)                # 4-byte Spill
.LBB13_16:                              # %for.body15
                                        #   in Loop: Header=BB13_7 Depth=2
	movl	-96(%ebp), %ecx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-88(%ebp), %esi                 # 4-byte Reload
	movl	-100(%ebp), %edx                # 4-byte Reload
	shll	$7, %edx
	imull	$88, %esi, %esi
	addl	%esi, %eax
	shrl	$3, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc22
                                        #   in Loop: Header=BB13_7 Depth=2
	movl	-96(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	jmp	.LBB13_7
.LBB13_10:                              # %for.end24
                                        #   in Loop: Header=BB13_5 Depth=1
	jmp	.LBB13_11
.LBB13_11:                              # %for.inc25
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	-88(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jmp	.LBB13_5
.LBB13_12:                              # %for.end27
	addl	$140, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end13:
	.size	init_array.5_fixp, .Lfunc_end13-init_array.5_fixp
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
	shll	$25, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$6, %eax
	sarl	$3, %edx
	imull	%edx
	movl	%eax, %ebx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, -48(%ebp)                 # 4-byte Spill
	movl	%edx, %ebx
	movl	-48(%ebp), %edx                 # 4-byte Reload
	shrdl	$21, %ebx, %edx
	shll	$1, %edx
	imull	%edi, %esi
	shll	$2, %esi
	addl	%esi, %eax
	shll	$6, %edx
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
	.size	scale_2d.6_fixp, .Lfunc_end14-scale_2d.6_fixp
	.cfi_endproc
                                        # -- End function
	.type	y_float,@object                 # @y_float
	.bss
	.globl	y_float
	.p2align	2
y_float:
	.zero	88
	.size	y_float, 88

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
	.addrsig_sym scale_1d.1_fixp
	.addrsig_sym scale_1d.2_fixp
	.addrsig_sym kernel_atax.3_fixp
	.addrsig_sym scale_1d.4_fixp
	.addrsig_sym init_array.5_fixp
	.addrsig_sym scale_2d.6_fixp
	.addrsig_sym y_float
	.addrsig_sym stderr

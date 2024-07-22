	.text
	.file	"ludcmp.c"
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
	subl	$3484, %esp                     # imm = 0xD9C
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L7$pb
.L7$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L7$pb), %ebx
	movl	%ebx, -3464(%ebp)               # 4-byte Spill
	leal	-1612(%ebp), %edi
	leal	-3212(%ebp), %esi
	leal	-3292(%ebp), %edx
	leal	-3372(%ebp), %ecx
	leal	-3452(%ebp), %eax
	movl	$20, (%esp)
	movl	%edi, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, 20(%esp)
	calll	init_array.5_fixp
	movl	-3464(%ebp), %ebx               # 4-byte Reload
	leal	-1612(%ebp), %eax
	movl	$20, (%esp)
	movl	$20, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$1024, 12(%esp)                 # imm = 0x400
	calll	scale_2d.6_fixp
	movl	-3464(%ebp), %ebx               # 4-byte Reload
	leal	-3212(%ebp), %eax
	movl	$20, (%esp)
	movl	$20, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$1024, 12(%esp)                 # imm = 0x400
	calll	scale_2d.6_fixp
	movl	-3464(%ebp), %ebx               # 4-byte Reload
	leal	-3292(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$1024, 8(%esp)                  # imm = 0x400
	calll	scale_1d.1_fixp
	movl	-3464(%ebp), %ebx               # 4-byte Reload
	leal	-3372(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$1024, 8(%esp)                  # imm = 0x400
	calll	scale_1d.2_fixp
	movl	-3464(%ebp), %ebx               # 4-byte Reload
	leal	-3452(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$1024, 8(%esp)                  # imm = 0x400
	calll	scale_1d.1_fixp
	movl	-3464(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-3464(%ebp), %ebx               # 4-byte Reload
	leal	-1612(%ebp), %esi
	leal	-3292(%ebp), %edx
	leal	-3372(%ebp), %ecx
	leal	-3452(%ebp), %eax
	movl	$20, (%esp)
	movl	%esi, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 16(%esp)
	calll	kernel_ludcmp.3_fixp
	movl	-3464(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -3460(%ebp)               # 4-byte Spill
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-3460(%ebp), %eax               # 4-byte Reload
	movl	%eax, -3468(%ebp)               # 4-byte Spill
	cmpl	$20, %eax
	jge	.LBB7_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-3464(%ebp), %eax               # 4-byte Reload
	movl	-3468(%ebp), %ecx               # 4-byte Reload
	movl	-3372(%ebp,%ecx,4), %edx
	movl	%edx, -3456(%ebp)
	fildl	-3456(%ebp)
	flds	.LCPI7_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	fstps	x_float@GOTOFF(%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-3468(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -3460(%ebp)               # 4-byte Spill
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	movl	-3464(%ebp), %ebx               # 4-byte Reload
	leal	x_float@GOTOFF(%ebx), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$3484, %esp                     # imm = 0xD9C
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
	leal	.L.str.9@GOTOFF(%ebx), %eax
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
	leal	.L.str.10@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.10@GOTOFF(%ebx), %edx
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
	shll	$21, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$10, %eax
	sarl	$12, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%esi, -28(%ebp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	-28(%ebp), %edx                 # 4-byte Reload
	shrdl	$8, %esi, %edx
	shll	$1, %edx
	shll	$10, %edx
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
	.p2align	4, 0x90                         # -- Begin function kernel_ludcmp.3_fixp
	.type	kernel_ludcmp.3_fixp,@function
kernel_ludcmp.3_fixp:                   # @kernel_ludcmp.3_fixp
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
	subl	$220, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L10$pb
.L10$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L10$pb), %eax
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
                                        #     Child Loop BB10_11 Depth 2
                                        #       Child Loop BB10_13 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_20
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB10_3
.LBB10_3:                               # %for.cond2
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_5 Depth 3
	movl	-44(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_10
# %bb.4:                                # %for.body4
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-44(%ebp), %edx                 # 4-byte Reload
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %eax
	shll	$5, %eax
	xorl	%ecx, %ecx
	movl	%ecx, -60(%ebp)                 # 4-byte Spill
	movl	%eax, -56(%ebp)                 # 4-byte Spill
.LBB10_5:                               # %for.cond6
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	-56(%ebp), %edx                 # 4-byte Reload
	movl	%edx, -68(%ebp)                 # 4-byte Spill
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_8
# %bb.6:                                # %for.body8
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-52(%ebp), %edx                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-64(%ebp), %esi                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	imull	$80, %eax, %edi
	movl	%ecx, %eax
	addl	%edi, %eax
	movl	(%eax,%esi,4), %eax
	imull	$80, %esi, %esi
	addl	%esi, %ecx
	movl	(%ecx,%edx,4), %ecx
	shrl	$1, %eax
	shrl	$1, %ecx
	sarl	$13, %eax
	sarl	$13, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-68(%ebp), %eax                 # 4-byte Reload
	shrdl	$4, %edx, %ecx
	sarl	$19, %eax
	subl	%ecx, %eax
	movl	%eax, -72(%ebp)                 # 4-byte Spill
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=3
	movl	-72(%ebp), %eax                 # 4-byte Reload
	movl	-64(%ebp), %ecx                 # 4-byte Reload
	addl	$1, %ecx
	shll	$19, %eax
	movl	%ecx, -60(%ebp)                 # 4-byte Spill
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jmp	.LBB10_5
.LBB10_8:                               # %for.end
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-40(%ebp), %ebx                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	imull	$80, %ecx, %esi
	addl	%esi, %eax
	movl	(%eax,%ecx,4), %ecx
	shrl	$1, %ecx
	movl	%ecx, -92(%ebp)                 # 4-byte Spill
	sarl	$6, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$17, %ecx
	movl	%ecx, -100(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$17, %edx, %ecx
	movl	%ecx, -96(%ebp)                 # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-100(%ebp), %ebx                # 4-byte Reload
	movl	-96(%ebp), %ecx                 # 4-byte Reload
	movl	%eax, %edi
	movl	-92(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -88(%ebp)                 # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-88(%ebp), %eax                 # 4-byte Reload
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
	movb	%al, -81(%ebp)                  # 1-byte Spill
	calll	__divdi3@PLT
	movb	-81(%ebp), %cl                  # 1-byte Reload
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	jne	.LBB10_38
# %bb.37:                               # %for.end
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-80(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -76(%ebp)                 # 4-byte Spill
.LBB10_38:                              # %for.end
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-44(%ebp), %esi                 # 4-byte Reload
	movl	-76(%ebp), %edx                 # 4-byte Reload
	shll	$3, %edx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	sarl	$2, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc17
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB10_3
.LBB10_10:                              # %for.end19
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -104(%ebp)                # 4-byte Spill
	jmp	.LBB10_11
.LBB10_11:                              # %for.cond20
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_13 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-104(%ebp), %eax                # 4-byte Reload
	movl	%eax, -108(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_18
# %bb.12:                               # %for.body22
                                        #   in Loop: Header=BB10_11 Depth=2
	movl	-108(%ebp), %ecx                # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-44(%ebp), %edx                 # 4-byte Reload
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %eax
	shll	$5, %eax
	xorl	%ecx, %ecx
	movl	%ecx, -116(%ebp)                # 4-byte Spill
	movl	%eax, -112(%ebp)                # 4-byte Spill
.LBB10_13:                              # %for.cond25
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%ebp), %ecx                 # 4-byte Reload
	movl	-116(%ebp), %eax                # 4-byte Reload
	movl	-112(%ebp), %edx                # 4-byte Reload
	movl	%edx, -124(%ebp)                # 4-byte Spill
	movl	%eax, -120(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_16
# %bb.14:                               # %for.body27
                                        #   in Loop: Header=BB10_13 Depth=3
	movl	-108(%ebp), %edx                # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-120(%ebp), %esi                # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	imull	$80, %eax, %edi
	movl	%ecx, %eax
	addl	%edi, %eax
	movl	(%eax,%esi,4), %eax
	imull	$80, %esi, %esi
	addl	%esi, %ecx
	movl	(%ecx,%edx,4), %ecx
	shrl	$1, %eax
	shrl	$1, %ecx
	sarl	$13, %eax
	sarl	$13, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-124(%ebp), %eax                # 4-byte Reload
	shrdl	$4, %edx, %ecx
	sarl	$19, %eax
	subl	%ecx, %eax
	movl	%eax, -128(%ebp)                # 4-byte Spill
# %bb.15:                               # %for.inc34
                                        #   in Loop: Header=BB10_13 Depth=3
	movl	-128(%ebp), %eax                # 4-byte Reload
	movl	-120(%ebp), %ecx                # 4-byte Reload
	addl	$1, %ecx
	shll	$19, %eax
	movl	%ecx, -116(%ebp)                # 4-byte Spill
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB10_13
.LBB10_16:                              # %for.end36
                                        #   in Loop: Header=BB10_11 Depth=2
	movl	-108(%ebp), %ecx                # 4-byte Reload
	movl	-124(%ebp), %edx                # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-44(%ebp), %esi                 # 4-byte Reload
	imull	$80, %esi, %esi
	addl	%esi, %eax
	sarl	$5, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.17:                               # %for.inc39
                                        #   in Loop: Header=BB10_11 Depth=2
	movl	-108(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -104(%ebp)                # 4-byte Spill
	jmp	.LBB10_11
.LBB10_18:                              # %for.end41
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_19
.LBB10_19:                              # %for.inc42
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB10_1
.LBB10_20:                              # %for.end44
	xorl	%eax, %eax
	movl	%eax, -132(%ebp)                # 4-byte Spill
	jmp	.LBB10_21
.LBB10_21:                              # %for.cond45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_23 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-132(%ebp), %eax                # 4-byte Reload
	movl	%eax, -136(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_28
# %bb.22:                               # %for.body47
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-136(%ebp), %ecx                # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	shll	$4, %eax
	xorl	%ecx, %ecx
	movl	%ecx, -144(%ebp)                # 4-byte Spill
	movl	%eax, -140(%ebp)                # 4-byte Spill
.LBB10_23:                              # %for.cond49
                                        #   Parent Loop BB10_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-136(%ebp), %ecx                # 4-byte Reload
	movl	-144(%ebp), %eax                # 4-byte Reload
	movl	-140(%ebp), %edx                # 4-byte Reload
	movl	%edx, -152(%ebp)                # 4-byte Spill
	movl	%eax, -148(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_26
# %bb.24:                               # %for.body51
                                        #   in Loop: Header=BB10_23 Depth=2
	movl	-36(%ebp), %ecx                 # 4-byte Reload
	movl	-148(%ebp), %edx                # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-136(%ebp), %esi                # 4-byte Reload
	imull	$80, %esi, %esi
	addl	%esi, %eax
	movl	(%eax,%edx,4), %eax
	movl	(%ecx,%edx,4), %ecx
	shrl	$1, %eax
	shrl	$1, %ecx
	sarl	$12, %eax
	sarl	$13, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-152(%ebp), %eax                # 4-byte Reload
	shrdl	$5, %edx, %ecx
	sarl	$18, %eax
	subl	%ecx, %eax
	movl	%eax, -156(%ebp)                # 4-byte Spill
# %bb.25:                               # %for.inc57
                                        #   in Loop: Header=BB10_23 Depth=2
	movl	-156(%ebp), %eax                # 4-byte Reload
	movl	-148(%ebp), %ecx                # 4-byte Reload
	addl	$1, %ecx
	shll	$18, %eax
	movl	%ecx, -144(%ebp)                # 4-byte Spill
	movl	%eax, -140(%ebp)                # 4-byte Spill
	jmp	.LBB10_23
.LBB10_26:                              # %for.end59
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-136(%ebp), %ecx                # 4-byte Reload
	movl	-152(%ebp), %edx                # 4-byte Reload
	sarl	$4, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.27:                               # %for.inc61
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-136(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -132(%ebp)                # 4-byte Spill
	jmp	.LBB10_21
.LBB10_28:                              # %for.end63
	movl	-20(%ebp), %eax                 # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -160(%ebp)                # 4-byte Spill
.LBB10_29:                              # %for.cond65
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_31 Depth 2
	movl	-160(%ebp), %eax                # 4-byte Reload
	movl	%eax, -164(%ebp)                # 4-byte Spill
	cmpl	$0, %eax
	jl	.LBB10_36
# %bb.30:                               # %for.body67
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	-164(%ebp), %ecx                # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	addl	$1, %ecx
	shll	$4, %eax
	movl	%ecx, -172(%ebp)                # 4-byte Spill
	movl	%eax, -168(%ebp)                # 4-byte Spill
.LBB10_31:                              # %for.cond69
                                        #   Parent Loop BB10_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-172(%ebp), %eax                # 4-byte Reload
	movl	-168(%ebp), %edx                # 4-byte Reload
	movl	%edx, -180(%ebp)                # 4-byte Spill
	movl	%eax, -176(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_34
# %bb.32:                               # %for.body71
                                        #   in Loop: Header=BB10_31 Depth=2
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-176(%ebp), %edx                # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-164(%ebp), %esi                # 4-byte Reload
	imull	$80, %esi, %esi
	addl	%esi, %eax
	movl	(%eax,%edx,4), %eax
	movl	(%ecx,%edx,4), %ecx
	shrl	$1, %eax
	sarl	$2, %eax
	sarl	$13, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-180(%ebp), %eax                # 4-byte Reload
	shrdl	$15, %edx, %ecx
	sarl	$8, %eax
	subl	%ecx, %eax
	movl	%eax, -184(%ebp)                # 4-byte Spill
# %bb.33:                               # %for.inc77
                                        #   in Loop: Header=BB10_31 Depth=2
	movl	-184(%ebp), %eax                # 4-byte Reload
	movl	-176(%ebp), %ecx                # 4-byte Reload
	addl	$1, %ecx
	shll	$8, %eax
	movl	%ecx, -172(%ebp)                # 4-byte Spill
	movl	%eax, -168(%ebp)                # 4-byte Spill
	jmp	.LBB10_31
.LBB10_34:                              # %for.end79
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	-40(%ebp), %ebx                 # 4-byte Reload
	movl	-180(%ebp), %edx                # 4-byte Reload
	movl	-164(%ebp), %ecx                # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	imull	$80, %ecx, %esi
	addl	%esi, %eax
	movl	(%eax,%ecx,4), %ecx
	shrl	$1, %ecx
	movl	%ecx, -204(%ebp)                # 4-byte Spill
	sarl	$6, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$17, %ecx
	movl	%ecx, -212(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$17, %edx, %ecx
	movl	%ecx, -208(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-212(%ebp), %ebx                # 4-byte Reload
	movl	-208(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-204(%ebp), %eax                # 4-byte Reload
	movl	%edi, -200(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-200(%ebp), %eax                # 4-byte Reload
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
	movb	%al, -193(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-193(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -192(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -188(%ebp)                # 4-byte Spill
	jne	.LBB10_40
# %bb.39:                               # %for.end79
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	-192(%ebp), %eax                # 4-byte Reload
	movl	%eax, -188(%ebp)                # 4-byte Spill
.LBB10_40:                              # %for.end79
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-164(%ebp), %ecx                # 4-byte Reload
	movl	-188(%ebp), %edx                # 4-byte Reload
	shll	$3, %edx
	shll	$8, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.35:                               # %for.inc84
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	-164(%ebp), %eax                # 4-byte Reload
	addl	$-1, %eax
	movl	%eax, -160(%ebp)                # 4-byte Spill
	jmp	.LBB10_29
.LBB10_36:                              # %for.end85
	addl	$220, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end10:
	.size	kernel_ludcmp.3_fixp, .Lfunc_end10-kernel_ludcmp.3_fixp
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
	jmp	.LBB11_1
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %ecx                 # 4-byte Reload
	movl	-8(%ebp), %eax                  # 4-byte Reload
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB11_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-20(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	shll	$21, %edx
	shrl	$1, %edx
	sarl	$9, %eax
	sarl	$1, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%esi, -28(%ebp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	-28(%ebp), %edx                 # 4-byte Reload
	shrdl	$19, %esi, %edx
	shll	$9, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	addl	$24, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end11:
	.size	scale_1d.2_fixp, .Lfunc_end11-scale_1d.2_fixp
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
	subl	$220, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L12$pb
.L12$pb:
	popl	%eax
.Ltmp4:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp4-.L12$pb), %eax
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
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	shll	$27, %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-48(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	-40(%ebp), %esi                 # 4-byte Reload
	movl	$0, (%esi,%edx,4)
	movl	$0, (%eax,%edx,4)
	addl	$1, %edx
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
	jne	.LBB12_46
# %bb.45:                               # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
.LBB12_46:                              # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-48(%ebp), %ebx                 # 4-byte Reload
	movl	-56(%ebp), %edx                 # 4-byte Reload
	shll	$4, %edx
	shrl	$1, %edx
	movl	$2, %ecx
	shll	$29, %ecx
	sarl	$1, %edx
	sarl	$1, %ecx
	movl	%ecx, -100(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$28, %ecx
	movl	%ecx, -108(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$28, %edx, %ecx
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
	movb	%al, -89(%ebp)                  # 1-byte Spill
	calll	__divdi3@PLT
	movb	-89(%ebp), %cl                  # 1-byte Reload
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jne	.LBB12_48
# %bb.47:                               # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-88(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -84(%ebp)                 # 4-byte Spill
.LBB12_48:                              # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-84(%ebp), %edx                 # 4-byte Reload
	shll	$1, %edx
	addl	$-2147483648, %edx              # imm = 0x80000000
	shrl	$10, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	xorl	%eax, %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB12_5
.LBB12_5:                               # %for.cond12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
                                        #     Child Loop BB12_11 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-112(%ebp), %eax                # 4-byte Reload
	movl	%eax, -116(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_16
# %bb.6:                                # %for.body15
                                        #   in Loop: Header=BB12_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB12_7
.LBB12_7:                               # %for.cond16
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-116(%ebp), %ecx                # 4-byte Reload
	movl	-120(%ebp), %eax                # 4-byte Reload
	movl	%eax, -124(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jg	.LBB12_10
# %bb.8:                                # %for.body19
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	-48(%ebp), %ebx                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-124(%ebp), %edx                # 4-byte Reload
	xorl	%eax, %eax
	subl	%edx, %eax
	cltd
	idivl	%ecx
	shll	$26, %edx
	shll	$27, %ecx
	shrl	$1, %ecx
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
	movb	%al, -133(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-133(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -132(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -128(%ebp)                # 4-byte Spill
	jne	.LBB12_50
# %bb.49:                               # %for.body19
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	-132(%ebp), %eax                # 4-byte Reload
	movl	%eax, -128(%ebp)                # 4-byte Spill
.LBB12_50:                              # %for.body19
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	-124(%ebp), %ecx                # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-116(%ebp), %esi                # 4-byte Reload
	movl	-128(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	movl	$2147483648, %edi               # imm = 0x80000000
	shrl	$1, %edi
	addl	%edi, %edx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	sarl	$12, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc26
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	-124(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB12_7
.LBB12_10:                              # %for.end28
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	-116(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -156(%ebp)                # 4-byte Spill
.LBB12_11:                              # %for.cond30
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-156(%ebp), %eax                # 4-byte Reload
	movl	%eax, -160(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_14
# %bb.12:                               # %for.body33
                                        #   in Loop: Header=BB12_11 Depth=2
	movl	-160(%ebp), %ecx                # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-116(%ebp), %edx                # 4-byte Reload
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
# %bb.13:                               # %for.inc36
                                        #   in Loop: Header=BB12_11 Depth=2
	movl	-160(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -156(%ebp)                # 4-byte Spill
	jmp	.LBB12_11
.LBB12_14:                              # %for.end38
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	-116(%ebp), %ecx                # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	imull	$80, %ecx, %edx
	addl	%edx, %eax
	movl	$262144, (%eax,%ecx,4)          # imm = 0x40000
# %bb.15:                               # %for.inc41
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	-116(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB12_5
.LBB12_16:                              # %for.end43
	xorl	%eax, %eax
	movl	%eax, -164(%ebp)                # 4-byte Spill
	jmp	.LBB12_17
.LBB12_17:                              # %for.cond44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_19 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-164(%ebp), %eax                # 4-byte Reload
	movl	%eax, -168(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_24
# %bb.18:                               # %for.body47
                                        #   in Loop: Header=BB12_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, -172(%ebp)                # 4-byte Spill
	jmp	.LBB12_19
.LBB12_19:                              # %for.cond48
                                        #   Parent Loop BB12_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-172(%ebp), %eax                # 4-byte Reload
	movl	%eax, -176(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_22
# %bb.20:                               # %for.body51
                                        #   in Loop: Header=BB12_19 Depth=2
	movl	-176(%ebp), %ecx                # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-168(%ebp), %edx                # 4-byte Reload
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
# %bb.21:                               # %for.inc54
                                        #   in Loop: Header=BB12_19 Depth=2
	movl	-176(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -172(%ebp)                # 4-byte Spill
	jmp	.LBB12_19
.LBB12_22:                              # %for.end56
                                        #   in Loop: Header=BB12_17 Depth=1
	jmp	.LBB12_23
.LBB12_23:                              # %for.inc57
                                        #   in Loop: Header=BB12_17 Depth=1
	movl	-168(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -164(%ebp)                # 4-byte Spill
	jmp	.LBB12_17
.LBB12_24:                              # %for.end59
	xorl	%eax, %eax
	movl	%eax, -180(%ebp)                # 4-byte Spill
	jmp	.LBB12_25
.LBB12_25:                              # %for.cond60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_27 Depth 2
                                        #       Child Loop BB12_29 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-180(%ebp), %eax                # 4-byte Reload
	movl	%eax, -184(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_36
# %bb.26:                               # %for.body63
                                        #   in Loop: Header=BB12_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -188(%ebp)                # 4-byte Spill
	jmp	.LBB12_27
.LBB12_27:                              # %for.cond64
                                        #   Parent Loop BB12_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_29 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-188(%ebp), %eax                # 4-byte Reload
	movl	%eax, -192(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_34
# %bb.28:                               # %for.body67
                                        #   in Loop: Header=BB12_27 Depth=2
	xorl	%eax, %eax
	movl	%eax, -196(%ebp)                # 4-byte Spill
	jmp	.LBB12_29
.LBB12_29:                              # %for.cond68
                                        #   Parent Loop BB12_25 Depth=1
                                        #     Parent Loop BB12_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-196(%ebp), %eax                # 4-byte Reload
	movl	%eax, -200(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_32
# %bb.30:                               # %for.body71
                                        #   in Loop: Header=BB12_29 Depth=3
	movl	-200(%ebp), %ecx                # 4-byte Reload
	movl	-192(%ebp), %eax                # 4-byte Reload
	movl	-184(%ebp), %esi                # 4-byte Reload
	movl	-28(%ebp), %edx                 # 4-byte Reload
	imull	$80, %eax, %edi
	movl	%edx, %eax
	addl	%edi, %eax
	movl	(%eax,%esi,4), %eax
	imull	$80, %ecx, %edi
	addl	%edi, %edx
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$13, %eax
	sarl	$13, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-192(%ebp), %edx                # 4-byte Reload
	shrdl	$4, %edi, %esi
	shll	$1, %esi
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %edx
	shrl	$13, %edx
	addl	%esi, %edx
	shll	$13, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.31:                               # %for.inc79
                                        #   in Loop: Header=BB12_29 Depth=3
	movl	-200(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -196(%ebp)                # 4-byte Spill
	jmp	.LBB12_29
.LBB12_32:                              # %for.end81
                                        #   in Loop: Header=BB12_27 Depth=2
	jmp	.LBB12_33
.LBB12_33:                              # %for.inc82
                                        #   in Loop: Header=BB12_27 Depth=2
	movl	-192(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -188(%ebp)                # 4-byte Spill
	jmp	.LBB12_27
.LBB12_34:                              # %for.end84
                                        #   in Loop: Header=BB12_25 Depth=1
	jmp	.LBB12_35
.LBB12_35:                              # %for.inc85
                                        #   in Loop: Header=BB12_25 Depth=1
	movl	-184(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -180(%ebp)                # 4-byte Spill
	jmp	.LBB12_25
.LBB12_36:                              # %for.end87
	xorl	%eax, %eax
	movl	%eax, -204(%ebp)                # 4-byte Spill
	jmp	.LBB12_37
.LBB12_37:                              # %for.cond88
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_39 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-204(%ebp), %eax                # 4-byte Reload
	movl	%eax, -208(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_44
# %bb.38:                               # %for.body91
                                        #   in Loop: Header=BB12_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, -212(%ebp)                # 4-byte Spill
	jmp	.LBB12_39
.LBB12_39:                              # %for.cond92
                                        #   Parent Loop BB12_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-212(%ebp), %eax                # 4-byte Reload
	movl	%eax, -216(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB12_42
# %bb.40:                               # %for.body95
                                        #   in Loop: Header=BB12_39 Depth=2
	movl	-216(%ebp), %ecx                # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-208(%ebp), %esi                # 4-byte Reload
	movl	-32(%ebp), %edx                 # 4-byte Reload
	imull	$80, %esi, %edi
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	movl	%edx, (%eax,%ecx,4)
# %bb.41:                               # %for.inc100
                                        #   in Loop: Header=BB12_39 Depth=2
	movl	-216(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -212(%ebp)                # 4-byte Spill
	jmp	.LBB12_39
.LBB12_42:                              # %for.end102
                                        #   in Loop: Header=BB12_37 Depth=1
	jmp	.LBB12_43
.LBB12_43:                              # %for.inc103
                                        #   in Loop: Header=BB12_37 Depth=1
	movl	-208(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -204(%ebp)                # 4-byte Spill
	jmp	.LBB12_37
.LBB12_44:                              # %for.end105
	addl	$220, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end12:
	.size	init_array.5_fixp, .Lfunc_end12-init_array.5_fixp
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
	jmp	.LBB13_1
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB13_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB13_3
.LBB13_3:                               # %for.cond1
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB13_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB13_3 Depth=2
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
	shll	$21, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$10, %eax
	sarl	$13, %edx
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
	shll	$10, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB13_3
.LBB13_6:                               # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_7
.LBB13_7:                               # %for.inc7
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB13_1
.LBB13_8:                               # %for.end9
	addl	$36, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end13:
	.size	scale_2d.6_fixp, .Lfunc_end13-scale_2d.6_fixp
	.cfi_endproc
                                        # -- End function
	.type	x_float,@object                 # @x_float
	.bss
	.globl	x_float
	.p2align	2
x_float:
	.zero	80
	.size	x_float, 80

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"\n"
	.size	.L.str.9, 2

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%0.16f "
	.size	.L.str.10, 8

	.ident	"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym print_array
	.addrsig_sym fprintf
	.addrsig_sym scale_1d.1_fixp
	.addrsig_sym kernel_ludcmp.3_fixp
	.addrsig_sym scale_1d.2_fixp
	.addrsig_sym init_array.5_fixp
	.addrsig_sym scale_2d.6_fixp
	.addrsig_sym x_float
	.addrsig_sym stderr

	.text
	.file	"3mm.c"
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
	subl	$2652, %esp                     # imm = 0xA5C
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L7$pb
.L7$pb:
	popl	%eax
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L7$pb), %eax
	movl	%eax, -2576(%ebp)               # 4-byte Spill
	leal	-444(%ebp), %eax
	movl	%eax, -2592(%ebp)               # 4-byte Spill
	leal	-764(%ebp), %ebx
	leal	-1596(%ebp), %edi
	leal	-2268(%ebp), %esi
	leal	-204(%ebp), %edx
	leal	-1148(%ebp), %ecx
	leal	-2556(%ebp), %eax
	movl	%eax, -2588(%ebp)               # 4-byte Spill
	movl	-2592(%ebp), %eax               # 4-byte Reload
	movl	$6, (%esp)
	movl	$8, 4(%esp)
	movl	$10, 8(%esp)
	movl	$12, 12(%esp)
	movl	$14, 16(%esp)
	movl	%eax, 20(%esp)
	movl	-2588(%ebp), %eax               # 4-byte Reload
	movl	%ebx, 24(%esp)
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	movl	%edi, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, 44(%esp)
	calll	init_array.2_fixp
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	leal	-204(%ebp), %eax
	movl	$6, (%esp)
	movl	$8, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$4, 12(%esp)
	calll	scale_2d.3_fixp
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	leal	-444(%ebp), %eax
	movl	$6, (%esp)
	movl	$10, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$4, 12(%esp)
	calll	scale_2d.4_fixp
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	leal	-764(%ebp), %eax
	movl	$10, (%esp)
	movl	$8, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$4, 12(%esp)
	calll	scale_2d.4_fixp
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	leal	-1148(%ebp), %eax
	movl	$8, (%esp)
	movl	$12, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$4, 12(%esp)
	calll	scale_2d.3_fixp
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	leal	-1596(%ebp), %eax
	movl	$8, (%esp)
	movl	$14, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$4, 12(%esp)
	calll	scale_2d.4_fixp
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	leal	-2268(%ebp), %eax
	movl	$14, (%esp)
	movl	$12, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$4, 12(%esp)
	calll	scale_2d.4_fixp
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	leal	-2556(%ebp), %eax
	movl	$6, (%esp)
	movl	$12, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$4, 12(%esp)
	calll	scale_2d.9_fixp
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	leal	-204(%ebp), %eax
	movl	%eax, -2584(%ebp)               # 4-byte Spill
	leal	-444(%ebp), %ebx
	leal	-764(%ebp), %edi
	leal	-1148(%ebp), %esi
	leal	-1596(%ebp), %edx
	leal	-2268(%ebp), %ecx
	leal	-2556(%ebp), %eax
	movl	%eax, -2580(%ebp)               # 4-byte Spill
	movl	-2584(%ebp), %eax               # 4-byte Reload
	movl	$6, (%esp)
	movl	$8, 4(%esp)
	movl	$10, 8(%esp)
	movl	$12, 12(%esp)
	movl	$14, 16(%esp)
	movl	%eax, 20(%esp)
	movl	-2580(%ebp), %eax               # 4-byte Reload
	movl	%ebx, 24(%esp)
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	movl	%edi, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, 44(%esp)
	calll	kernel_3mm.1_fixp
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -2572(%ebp)               # 4-byte Spill
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	-2572(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2596(%ebp)               # 4-byte Spill
	cmpl	$6, %eax
	jge	.LBB7_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2600(%ebp)               # 4-byte Spill
	jmp	.LBB7_3
.LBB7_3:                                # %for.cond28
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2600(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2604(%ebp)               # 4-byte Spill
	cmpl	$12, %eax
	jge	.LBB7_6
# %bb.4:                                # %for.body30
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-2604(%ebp), %ecx               # 4-byte Reload
	movl	-2576(%ebp), %eax               # 4-byte Reload
	movl	-2596(%ebp), %edx               # 4-byte Reload
	shll	$4, %edx
	leal	(%edx,%edx,2), %edx
	leal	-2556(%ebp,%edx), %esi
	movl	(%esi,%ecx,4), %esi
	movl	%esi, -2568(%ebp)
	movl	$0, -2564(%ebp)
	fildll	-2568(%ebp)
	flds	.LCPI7_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	leal	G_float@GOTOFF(%eax,%edx), %eax
	fstps	(%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-2604(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2600(%ebp)               # 4-byte Spill
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %for.inc34
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-2596(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2572(%ebp)               # 4-byte Spill
	jmp	.LBB7_1
.LBB7_8:                                # %for.end36
	movl	-2576(%ebp), %ebx               # 4-byte Reload
	leal	G_float@GOTOFF(%ebx), %eax
	movl	$6, (%esp)
	movl	$12, 4(%esp)
	movl	%eax, 8(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$2652, %esp                     # imm = 0xA5C
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
	leal	.L.str.9@GOTOFF(%ebx), %eax
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
	leal	(%esi,%esi,2), %esi
	shll	$4, %esi
	addl	%esi, %eax
	flds	(%eax,%edx,4)
	leal	.L.str.10@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.10@GOTOFF(%ebx), %edx
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
	.p2align	4, 0x90                         # -- Begin function kernel_3mm.1_fixp
	.type	kernel_3mm.1_fixp,@function
kernel_3mm.1_fixp:                      # @kernel_3mm.1_fixp
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
	subl	$128, %esp
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
	jmp	.LBB9_1
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
                                        #       Child Loop BB9_5 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	jmp	.LBB9_3
.LBB9_3:                                # %for.cond1
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_5 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-72(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_10
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-76(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	shll	$5, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -80(%ebp)                 # 4-byte Spill
.LBB9_5:                                # %for.cond5
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-80(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_8
# %bb.6:                                # %for.body7
                                        #   in Loop: Header=BB9_5 Depth=3
	movl	-76(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %esi                 # 4-byte Reload
	movl	-48(%ebp), %edx                 # 4-byte Reload
	movl	-84(%ebp), %edi                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	imull	$40, %esi, %ebx
	addl	%ebx, %eax
	movl	(%eax,%edi,4), %eax
	shll	$5, %edi
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %eax
	sarl	$1, %edx
	imull	%edx
	movl	%eax, %edi
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -88(%ebp)                 # 4-byte Spill
	movl	%edx, %edi
	movl	-88(%ebp), %edx                 # 4-byte Reload
	shrdl	$29, %edi, %edx
	shll	$1, %edx
	shll	$5, %esi
	addl	%esi, %eax
	addl	(%eax,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB9_5 Depth=3
	movl	-84(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	jmp	.LBB9_5
.LBB9_8:                                # %for.end
                                        #   in Loop: Header=BB9_3 Depth=2
	jmp	.LBB9_9
.LBB9_9:                                # %for.inc14
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-76(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	jmp	.LBB9_3
.LBB9_10:                               # %for.end16
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_11
.LBB9_11:                               # %for.inc17
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-68(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB9_1
.LBB9_12:                               # %for.end19
	xorl	%eax, %eax
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	jmp	.LBB9_13
.LBB9_13:                               # %for.cond20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_15 Depth 2
                                        #       Child Loop BB9_17 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-92(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_24
# %bb.14:                               # %for.body22
                                        #   in Loop: Header=BB9_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, -100(%ebp)                # 4-byte Spill
	jmp	.LBB9_15
.LBB9_15:                               # %for.cond23
                                        #   Parent Loop BB9_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_17 Depth 3
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-100(%ebp), %eax                # 4-byte Reload
	movl	%eax, -104(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_22
# %bb.16:                               # %for.body25
                                        #   in Loop: Header=BB9_15 Depth=2
	movl	-104(%ebp), %ecx                # 4-byte Reload
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	-96(%ebp), %edx                 # 4-byte Reload
	imull	$48, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -108(%ebp)                # 4-byte Spill
.LBB9_17:                               # %for.cond28
                                        #   Parent Loop BB9_13 Depth=1
                                        #     Parent Loop BB9_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%ebp), %ecx                 # 4-byte Reload
	movl	-108(%ebp), %eax                # 4-byte Reload
	movl	%eax, -112(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_20
# %bb.18:                               # %for.body30
                                        #   in Loop: Header=BB9_17 Depth=3
	movl	-104(%ebp), %ecx                # 4-byte Reload
	movl	-96(%ebp), %esi                 # 4-byte Reload
	movl	-60(%ebp), %edx                 # 4-byte Reload
	movl	-112(%ebp), %edi                # 4-byte Reload
	movl	-56(%ebp), %eax                 # 4-byte Reload
	imull	$56, %esi, %ebx
	addl	%ebx, %eax
	movl	(%eax,%edi,4), %eax
	imull	$48, %edi, %edi
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %eax
	sarl	$1, %edx
	imull	%edx
	movl	%eax, %edi
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -116(%ebp)                # 4-byte Spill
	movl	%edx, %edi
	movl	-116(%ebp), %edx                # 4-byte Reload
	shrdl	$29, %edi, %edx
	shll	$1, %edx
	imull	$48, %esi, %esi
	addl	%esi, %eax
	addl	(%eax,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.19:                               # %for.inc39
                                        #   in Loop: Header=BB9_17 Depth=3
	movl	-112(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -108(%ebp)                # 4-byte Spill
	jmp	.LBB9_17
.LBB9_20:                               # %for.end41
                                        #   in Loop: Header=BB9_15 Depth=2
	jmp	.LBB9_21
.LBB9_21:                               # %for.inc42
                                        #   in Loop: Header=BB9_15 Depth=2
	movl	-104(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -100(%ebp)                # 4-byte Spill
	jmp	.LBB9_15
.LBB9_22:                               # %for.end44
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_23
.LBB9_23:                               # %for.inc45
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-96(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	jmp	.LBB9_13
.LBB9_24:                               # %for.end47
	xorl	%eax, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB9_25
.LBB9_25:                               # %for.cond48
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_27 Depth 2
                                        #       Child Loop BB9_29 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-120(%ebp), %eax                # 4-byte Reload
	movl	%eax, -124(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_36
# %bb.26:                               # %for.body50
                                        #   in Loop: Header=BB9_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -128(%ebp)                # 4-byte Spill
	jmp	.LBB9_27
.LBB9_27:                               # %for.cond51
                                        #   Parent Loop BB9_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_29 Depth 3
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-128(%ebp), %eax                # 4-byte Reload
	movl	%eax, -132(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_34
# %bb.28:                               # %for.body53
                                        #   in Loop: Header=BB9_27 Depth=2
	movl	-132(%ebp), %ecx                # 4-byte Reload
	movl	-64(%ebp), %eax                 # 4-byte Reload
	movl	-124(%ebp), %edx                # 4-byte Reload
	imull	$48, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -136(%ebp)                # 4-byte Spill
.LBB9_29:                               # %for.cond56
                                        #   Parent Loop BB9_25 Depth=1
                                        #     Parent Loop BB9_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-136(%ebp), %eax                # 4-byte Reload
	movl	%eax, -140(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB9_32
# %bb.30:                               # %for.body58
                                        #   in Loop: Header=BB9_29 Depth=3
	movl	-132(%ebp), %ecx                # 4-byte Reload
	movl	-124(%ebp), %edi                # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	movl	-140(%ebp), %esi                # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	shll	$5, %edi
	addl	%edi, %eax
	movl	(%eax,%esi,4), %eax
	imull	$48, %esi, %esi
	addl	%esi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$3, %eax
	sarl	$3, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-64(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-124(%ebp), %edx                # 4-byte Reload
	shrdl	$26, %edi, %esi
	shll	$1, %esi
	imull	$48, %edx, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %edx
	shrl	$1, %edx
	addl	%esi, %edx
	shll	$1, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.31:                               # %for.inc67
                                        #   in Loop: Header=BB9_29 Depth=3
	movl	-140(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -136(%ebp)                # 4-byte Spill
	jmp	.LBB9_29
.LBB9_32:                               # %for.end69
                                        #   in Loop: Header=BB9_27 Depth=2
	jmp	.LBB9_33
.LBB9_33:                               # %for.inc70
                                        #   in Loop: Header=BB9_27 Depth=2
	movl	-132(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -128(%ebp)                # 4-byte Spill
	jmp	.LBB9_27
.LBB9_34:                               # %for.end72
                                        #   in Loop: Header=BB9_25 Depth=1
	jmp	.LBB9_35
.LBB9_35:                               # %for.inc73
                                        #   in Loop: Header=BB9_25 Depth=1
	movl	-124(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB9_25
.LBB9_36:                               # %for.end75
	addl	$128, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end9:
	.size	kernel_3mm.1_fixp, .Lfunc_end9-kernel_3mm.1_fixp
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
	subl	$300, %esp                      # imm = 0x12C
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L10$pb
.L10$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L10$pb), %eax
	movl	%eax, -68(%ebp)                 # 4-byte Spill
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
	jmp	.LBB10_1
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	jmp	.LBB10_3
.LBB10_3:                               # %for.cond3
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_6
# %bb.4:                                # %for.body5
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-68(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-80(%ebp), %edx                 # 4-byte Reload
	movl	-72(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	addl	$1, %eax
	cltd
	idivl	%ecx
	movl	-20(%ebp), %eax                 # 4-byte Reload
	shll	$29, %edx
	imull	$5, %eax, %ecx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -100(%ebp)                # 4-byte Spill
	sarl	$2, %edx
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
	movl	-68(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB10_58
# %bb.57:                               # %for.body5
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-88(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -84(%ebp)                 # 4-byte Spill
.LBB10_58:                              # %for.body5
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-80(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	-72(%ebp), %esi                 # 4-byte Reload
	movl	-84(%ebp), %edx                 # 4-byte Reload
	shll	$3, %edx
	imull	$40, %esi, %esi
	addl	%esi, %eax
	shll	$2, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-80(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	jmp	.LBB10_3
.LBB10_6:                               # %for.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               # %for.inc9
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-72(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB10_1
.LBB10_8:                               # %for.end11
	xorl	%eax, %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB10_9
.LBB10_9:                               # %for.cond12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_11 Depth 2
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-112(%ebp), %eax                # 4-byte Reload
	movl	%eax, -116(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_16
# %bb.10:                               # %for.body15
                                        #   in Loop: Header=BB10_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB10_11
.LBB10_11:                              # %for.cond16
                                        #   Parent Loop BB10_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-120(%ebp), %eax                # 4-byte Reload
	movl	%eax, -124(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_14
# %bb.12:                               # %for.body19
                                        #   in Loop: Header=BB10_11 Depth=2
	movl	-68(%ebp), %ebx                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-116(%ebp), %eax                # 4-byte Reload
	movl	-124(%ebp), %edx                # 4-byte Reload
	addl	$1, %edx
	imull	%edx, %eax
	addl	$2, %eax
	cltd
	idivl	%ecx
	movl	-24(%ebp), %eax                 # 4-byte Reload
	shll	$29, %edx
	imull	$5, %eax, %ecx
	shll	$26, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -144(%ebp)                # 4-byte Spill
	sarl	$3, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$25, %ecx
	movl	%ecx, -152(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$25, %edx, %ecx
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
	movl	-68(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB10_60
# %bb.59:                               # %for.body19
                                        #   in Loop: Header=BB10_11 Depth=2
	movl	-132(%ebp), %eax                # 4-byte Reload
	movl	%eax, -128(%ebp)                # 4-byte Spill
.LBB10_60:                              # %for.body19
                                        #   in Loop: Header=BB10_11 Depth=2
	movl	-124(%ebp), %ecx                # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	-116(%ebp), %esi                # 4-byte Reload
	movl	-128(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	shll	$5, %esi
	addl	%esi, %eax
	shll	$2, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.13:                               # %for.inc30
                                        #   in Loop: Header=BB10_11 Depth=2
	movl	-124(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB10_11
.LBB10_14:                              # %for.end32
                                        #   in Loop: Header=BB10_9 Depth=1
	jmp	.LBB10_15
.LBB10_15:                              # %for.inc33
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	-116(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB10_9
.LBB10_16:                              # %for.end35
	xorl	%eax, %eax
	movl	%eax, -156(%ebp)                # 4-byte Spill
	jmp	.LBB10_17
.LBB10_17:                              # %for.cond36
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_19 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-156(%ebp), %eax                # 4-byte Reload
	movl	%eax, -160(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_24
# %bb.18:                               # %for.body39
                                        #   in Loop: Header=BB10_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, -164(%ebp)                # 4-byte Spill
	jmp	.LBB10_19
.LBB10_19:                              # %for.cond40
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%ebp), %ecx                 # 4-byte Reload
	movl	-164(%ebp), %eax                # 4-byte Reload
	movl	%eax, -168(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_22
# %bb.20:                               # %for.body43
                                        #   in Loop: Header=BB10_19 Depth=2
	movl	-68(%ebp), %ebx                 # 4-byte Reload
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-160(%ebp), %eax                # 4-byte Reload
	movl	-168(%ebp), %edx                # 4-byte Reload
	addl	$3, %edx
	imull	%edx, %eax
	cltd
	idivl	%ecx
	movl	-32(%ebp), %eax                 # 4-byte Reload
	shll	$28, %edx
	imull	$5, %eax, %ecx
	shll	$26, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -188(%ebp)                # 4-byte Spill
	sarl	$2, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$25, %ecx
	movl	%ecx, -196(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$25, %edx, %ecx
	movl	%ecx, -192(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-196(%ebp), %ebx                # 4-byte Reload
	movl	-192(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-188(%ebp), %eax                # 4-byte Reload
	movl	%edi, -184(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-184(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-68(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -177(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-177(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -176(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -172(%ebp)                # 4-byte Spill
	jne	.LBB10_62
# %bb.61:                               # %for.body43
                                        #   in Loop: Header=BB10_19 Depth=2
	movl	-176(%ebp), %eax                # 4-byte Reload
	movl	%eax, -172(%ebp)                # 4-byte Spill
.LBB10_62:                              # %for.body43
                                        #   in Loop: Header=BB10_19 Depth=2
	movl	-168(%ebp), %ecx                # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-160(%ebp), %esi                # 4-byte Reload
	movl	-172(%ebp), %edx                # 4-byte Reload
	shll	$6, %edx
	imull	$56, %esi, %esi
	addl	%esi, %eax
	movl	%edx, (%eax,%ecx,4)
# %bb.21:                               # %for.inc53
                                        #   in Loop: Header=BB10_19 Depth=2
	movl	-168(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -164(%ebp)                # 4-byte Spill
	jmp	.LBB10_19
.LBB10_22:                              # %for.end55
                                        #   in Loop: Header=BB10_17 Depth=1
	jmp	.LBB10_23
.LBB10_23:                              # %for.inc56
                                        #   in Loop: Header=BB10_17 Depth=1
	movl	-160(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -156(%ebp)                # 4-byte Spill
	jmp	.LBB10_17
.LBB10_24:                              # %for.end58
	xorl	%eax, %eax
	movl	%eax, -200(%ebp)                # 4-byte Spill
	jmp	.LBB10_25
.LBB10_25:                              # %for.cond59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_27 Depth 2
	movl	-36(%ebp), %ecx                 # 4-byte Reload
	movl	-200(%ebp), %eax                # 4-byte Reload
	movl	%eax, -204(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_32
# %bb.26:                               # %for.body62
                                        #   in Loop: Header=BB10_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -208(%ebp)                # 4-byte Spill
	jmp	.LBB10_27
.LBB10_27:                              # %for.cond63
                                        #   Parent Loop BB10_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-208(%ebp), %eax                # 4-byte Reload
	movl	%eax, -212(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_30
# %bb.28:                               # %for.body66
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-68(%ebp), %ebx                 # 4-byte Reload
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-204(%ebp), %eax                # 4-byte Reload
	movl	-212(%ebp), %edx                # 4-byte Reload
	addl	$2, %edx
	imull	%edx, %eax
	addl	$2, %eax
	cltd
	idivl	%ecx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	shll	$28, %edx
	imull	$5, %eax, %ecx
	shll	$26, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -232(%ebp)                # 4-byte Spill
	sarl	$2, %edx
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$25, %ecx
	movl	%ecx, -240(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$25, %edx, %ecx
	movl	%ecx, -236(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-240(%ebp), %ebx                # 4-byte Reload
	movl	-236(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-232(%ebp), %eax                # 4-byte Reload
	movl	%edi, -228(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-228(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-68(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -221(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-221(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -220(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -216(%ebp)                # 4-byte Spill
	jne	.LBB10_64
# %bb.63:                               # %for.body66
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-220(%ebp), %eax                # 4-byte Reload
	movl	%eax, -216(%ebp)                # 4-byte Spill
.LBB10_64:                              # %for.body66
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-212(%ebp), %ecx                # 4-byte Reload
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	-204(%ebp), %esi                # 4-byte Reload
	movl	-216(%ebp), %edx                # 4-byte Reload
	shll	$6, %edx
	imull	$48, %esi, %esi
	addl	%esi, %eax
	movl	%edx, (%eax,%ecx,4)
# %bb.29:                               # %for.inc77
                                        #   in Loop: Header=BB10_27 Depth=2
	movl	-212(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -208(%ebp)                # 4-byte Spill
	jmp	.LBB10_27
.LBB10_30:                              # %for.end79
                                        #   in Loop: Header=BB10_25 Depth=1
	jmp	.LBB10_31
.LBB10_31:                              # %for.inc80
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	-204(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -200(%ebp)                # 4-byte Spill
	jmp	.LBB10_25
.LBB10_32:                              # %for.end82
	xorl	%eax, %eax
	movl	%eax, -244(%ebp)                # 4-byte Spill
	jmp	.LBB10_33
.LBB10_33:                              # %for.cond83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_35 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-244(%ebp), %eax                # 4-byte Reload
	movl	%eax, -248(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_40
# %bb.34:                               # %for.body86
                                        #   in Loop: Header=BB10_33 Depth=1
	xorl	%eax, %eax
	movl	%eax, -252(%ebp)                # 4-byte Spill
	jmp	.LBB10_35
.LBB10_35:                              # %for.cond87
                                        #   Parent Loop BB10_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-252(%ebp), %eax                # 4-byte Reload
	movl	%eax, -256(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_38
# %bb.36:                               # %for.body90
                                        #   in Loop: Header=BB10_35 Depth=2
	movl	-256(%ebp), %ecx                # 4-byte Reload
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	-248(%ebp), %edx                # 4-byte Reload
	shll	$5, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
# %bb.37:                               # %for.inc93
                                        #   in Loop: Header=BB10_35 Depth=2
	movl	-256(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -252(%ebp)                # 4-byte Spill
	jmp	.LBB10_35
.LBB10_38:                              # %for.end95
                                        #   in Loop: Header=BB10_33 Depth=1
	jmp	.LBB10_39
.LBB10_39:                              # %for.inc96
                                        #   in Loop: Header=BB10_33 Depth=1
	movl	-248(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -244(%ebp)                # 4-byte Spill
	jmp	.LBB10_33
.LBB10_40:                              # %for.end98
	xorl	%eax, %eax
	movl	%eax, -260(%ebp)                # 4-byte Spill
	jmp	.LBB10_41
.LBB10_41:                              # %for.cond99
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_43 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-260(%ebp), %eax                # 4-byte Reload
	movl	%eax, -264(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_48
# %bb.42:                               # %for.body102
                                        #   in Loop: Header=BB10_41 Depth=1
	xorl	%eax, %eax
	movl	%eax, -268(%ebp)                # 4-byte Spill
	jmp	.LBB10_43
.LBB10_43:                              # %for.cond103
                                        #   Parent Loop BB10_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-268(%ebp), %eax                # 4-byte Reload
	movl	%eax, -272(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_46
# %bb.44:                               # %for.body106
                                        #   in Loop: Header=BB10_43 Depth=2
	movl	-272(%ebp), %ecx                # 4-byte Reload
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	-264(%ebp), %edx                # 4-byte Reload
	imull	$48, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
# %bb.45:                               # %for.inc109
                                        #   in Loop: Header=BB10_43 Depth=2
	movl	-272(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -268(%ebp)                # 4-byte Spill
	jmp	.LBB10_43
.LBB10_46:                              # %for.end111
                                        #   in Loop: Header=BB10_41 Depth=1
	jmp	.LBB10_47
.LBB10_47:                              # %for.inc112
                                        #   in Loop: Header=BB10_41 Depth=1
	movl	-264(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -260(%ebp)                # 4-byte Spill
	jmp	.LBB10_41
.LBB10_48:                              # %for.end114
	xorl	%eax, %eax
	movl	%eax, -276(%ebp)                # 4-byte Spill
	jmp	.LBB10_49
.LBB10_49:                              # %for.cond115
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_51 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-276(%ebp), %eax                # 4-byte Reload
	movl	%eax, -280(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_56
# %bb.50:                               # %for.body118
                                        #   in Loop: Header=BB10_49 Depth=1
	xorl	%eax, %eax
	movl	%eax, -284(%ebp)                # 4-byte Spill
	jmp	.LBB10_51
.LBB10_51:                              # %for.cond119
                                        #   Parent Loop BB10_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-284(%ebp), %eax                # 4-byte Reload
	movl	%eax, -288(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB10_54
# %bb.52:                               # %for.body122
                                        #   in Loop: Header=BB10_51 Depth=2
	movl	-288(%ebp), %ecx                # 4-byte Reload
	movl	-64(%ebp), %eax                 # 4-byte Reload
	movl	-280(%ebp), %edx                # 4-byte Reload
	imull	$48, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
# %bb.53:                               # %for.inc125
                                        #   in Loop: Header=BB10_51 Depth=2
	movl	-288(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -284(%ebp)                # 4-byte Spill
	jmp	.LBB10_51
.LBB10_54:                              # %for.end127
                                        #   in Loop: Header=BB10_49 Depth=1
	jmp	.LBB10_55
.LBB10_55:                              # %for.inc128
                                        #   in Loop: Header=BB10_49 Depth=1
	movl	-280(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -276(%ebp)                # 4-byte Spill
	jmp	.LBB10_49
.LBB10_56:                              # %for.end130
	addl	$300, %esp                      # imm = 0x12C
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
	shll	$29, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %eax
	imull	%edx
	movl	%eax, %ebx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, -48(%ebp)                 # 4-byte Spill
	movl	%edx, %ebx
	movl	-48(%ebp), %edx                 # 4-byte Reload
	shrdl	$28, %ebx, %edx
	shll	$1, %edx
	imull	%edi, %esi
	shll	$2, %esi
	addl	%esi, %eax
	shll	$1, %edx
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
	.p2align	4, 0x90                         # -- Begin function scale_2d.9_fixp
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
	shll	$29, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$2, %eax
	sarl	$3, %edx
	imull	%edx
	movl	%eax, %ebx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, -48(%ebp)                 # 4-byte Spill
	movl	%edx, %ebx
	movl	-48(%ebp), %edx                 # 4-byte Reload
	shrdl	$25, %ebx, %edx
	shll	$1, %edx
	imull	%edi, %esi
	shll	$2, %esi
	addl	%esi, %eax
	shll	$2, %edx
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
	.size	scale_2d.9_fixp, .Lfunc_end12-scale_2d.9_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_2d.4_fixp
	.type	scale_2d.4_fixp,@function
scale_2d.4_fixp:                        # @scale_2d.4_fixp
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
	shll	$29, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$2, %eax
	imull	%edx
	movl	%eax, %ebx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, -48(%ebp)                 # 4-byte Spill
	movl	%edx, %ebx
	movl	-48(%ebp), %edx                 # 4-byte Reload
	shrdl	$28, %ebx, %edx
	shll	$2, %edx
	imull	%edi, %esi
	shll	$2, %esi
	addl	%esi, %eax
	shll	$1, %edx
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
	.size	scale_2d.4_fixp, .Lfunc_end13-scale_2d.4_fixp
	.cfi_endproc
                                        # -- End function
	.type	G_float,@object                 # @G_float
	.bss
	.globl	G_float
	.p2align	2
G_float:
	.zero	288
	.size	G_float, 288

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
	.addrsig_sym kernel_3mm.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym scale_2d.3_fixp
	.addrsig_sym scale_2d.9_fixp
	.addrsig_sym scale_2d.4_fixp
	.addrsig_sym G_float
	.addrsig_sym stderr

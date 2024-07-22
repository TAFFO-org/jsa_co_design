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
	.long	0x45800000                      # float 4096
.LCPI7_1:
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
	pushl	%edi
	pushl	%esi
	subl	$2396, %esp                     # imm = 0x95C
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L7$pb
.L7$pb:
	popl	%eax
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L7$pb), %eax
	movl	%eax, -2288(%ebp)               # 4-byte Spill
	leal	-1620(%ebp), %eax
	movl	%eax, -2328(%ebp)               # 4-byte Spill
	leal	-1700(%ebp), %eax
	movl	%eax, -2324(%ebp)               # 4-byte Spill
	leal	-1780(%ebp), %eax
	movl	%eax, -2320(%ebp)               # 4-byte Spill
	leal	-1860(%ebp), %ebx
	leal	-1940(%ebp), %edi
	leal	-2020(%ebp), %esi
	leal	-2100(%ebp), %edx
	leal	-2180(%ebp), %ecx
	leal	-2260(%ebp), %eax
	movl	%eax, -2316(%ebp)               # 4-byte Spill
	leal	-16(%ebp), %eax
	movl	%eax, -2336(%ebp)               # 4-byte Spill
	leal	-20(%ebp), %eax
	movl	%eax, -2332(%ebp)               # 4-byte Spill
	movl	-2336(%ebp), %eax               # 4-byte Reload
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	-2332(%ebp), %eax               # 4-byte Reload
	movl	%eax, 8(%esp)
	movl	-2328(%ebp), %eax               # 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-2324(%ebp), %eax               # 4-byte Reload
	movl	%eax, 16(%esp)
	movl	-2320(%ebp), %eax               # 4-byte Reload
	movl	%eax, 20(%esp)
	movl	-2316(%ebp), %eax               # 4-byte Reload
	movl	%ebx, 24(%esp)
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	movl	%edi, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, 44(%esp)
	calll	init_array.12_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	$128, 4(%esp)
	calll	scale_scalar.1_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	$128, 4(%esp)
	calll	scale_scalar.1_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	leal	-1620(%ebp), %eax
	movl	$20, (%esp)
	movl	$20, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$128, 12(%esp)
	calll	scale_2d.13_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	leal	-1700(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$128, 8(%esp)
	calll	scale_1d.3_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	leal	-1780(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$128, 8(%esp)
	calll	scale_1d.4_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	leal	-1860(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$128, 8(%esp)
	calll	scale_1d.3_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	leal	-1940(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$128, 8(%esp)
	calll	scale_1d.6_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	leal	-2020(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$128, 8(%esp)
	calll	scale_1d.7_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	leal	-2100(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$128, 8(%esp)
	calll	scale_1d.8_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	leal	-2180(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$128, 8(%esp)
	calll	scale_1d.6_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	leal	-2260(%ebp), %eax
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	$128, 8(%esp)
	calll	scale_1d.11_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-16(%ebp), %eax
	movl	%eax, -2312(%ebp)               # 4-byte Spill
	movl	-20(%ebp), %eax
	movl	%eax, -2308(%ebp)               # 4-byte Spill
	leal	-1620(%ebp), %eax
	movl	%eax, -2304(%ebp)               # 4-byte Spill
	leal	-1700(%ebp), %eax
	movl	%eax, -2300(%ebp)               # 4-byte Spill
	leal	-1780(%ebp), %eax
	movl	%eax, -2296(%ebp)               # 4-byte Spill
	leal	-1860(%ebp), %ebx
	leal	-1940(%ebp), %edi
	leal	-2020(%ebp), %esi
	leal	-2100(%ebp), %edx
	leal	-2180(%ebp), %ecx
	leal	-2260(%ebp), %eax
	movl	%eax, -2292(%ebp)               # 4-byte Spill
	movl	-2312(%ebp), %eax               # 4-byte Reload
	movl	$20, (%esp)
	movl	%eax, 4(%esp)
	movl	-2308(%ebp), %eax               # 4-byte Reload
	movl	%eax, 8(%esp)
	movl	-2304(%ebp), %eax               # 4-byte Reload
	movl	%eax, 12(%esp)
	movl	-2300(%ebp), %eax               # 4-byte Reload
	movl	%eax, 16(%esp)
	movl	-2296(%ebp), %eax               # 4-byte Reload
	movl	%eax, 20(%esp)
	movl	-2292(%ebp), %eax               # 4-byte Reload
	movl	%ebx, 24(%esp)
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	movl	%edi, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, 44(%esp)
	calll	kernel_gemver.10_fixp
	movl	-2288(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -2284(%ebp)               # 4-byte Spill
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	-2284(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2340(%ebp)               # 4-byte Spill
	cmpl	$20, %eax
	jge	.LBB7_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-2288(%ebp), %eax               # 4-byte Reload
	movl	-2340(%ebp), %ecx               # 4-byte Reload
	movl	-2100(%ebp,%ecx,4), %edx
	movl	%edx, -2272(%ebp)
	movl	$0, -2268(%ebp)
	fildll	-2272(%ebp)
	flds	.LCPI7_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	fstps	x_float@GOTOFF(%eax,%ecx,4)
	flds	-2020(%ebp,%ecx,4)
	fstps	w_float@GOTOFF(%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -2344(%ebp)               # 4-byte Spill
.LBB7_3:                                # %for.cond41
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2344(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2348(%ebp)               # 4-byte Spill
	cmpl	$20, %eax
	jge	.LBB7_6
# %bb.4:                                # %for.body43
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-2348(%ebp), %ecx               # 4-byte Reload
	movl	-2288(%ebp), %eax               # 4-byte Reload
	movl	-2340(%ebp), %edx               # 4-byte Reload
	shll	$4, %edx
	leal	(%edx,%edx,4), %edx
	leal	-1620(%ebp,%edx), %esi
	movl	(%esi,%ecx,4), %esi
	movl	%esi, -2280(%ebp)
	movl	$0, -2276(%ebp)
	fildll	-2280(%ebp)
	flds	.LCPI7_1@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	leal	A_float@GOTOFF(%eax,%edx), %eax
	fstps	(%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-2348(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2344(%ebp)               # 4-byte Spill
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %for.inc48
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-2340(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2284(%ebp)               # 4-byte Spill
	jmp	.LBB7_1
.LBB7_8:                                # %for.end50
	movl	-2288(%ebp), %ebx               # 4-byte Reload
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
	subl	$80, %esp
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	calll	.L8$pb
.L8$pb:
	popl	%eax
.Ltmp2:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp2-.L8$pb), %eax
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
	jmp	.LBB8_1
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-12(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB8_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB8_3
.LBB8_3:                                # %for.cond1
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB8_8
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-44(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %edx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	addl	%ecx, %eax
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.14@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB8_6:                                # %if.end
                                        #   in Loop: Header=BB8_3 Depth=2
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
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB8_3
.LBB8_8:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_9
.LBB8_9:                                # %for.inc7
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	jmp	.LBB8_1
.LBB8_10:                               # %for.end9
	xorl	%eax, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB8_11
.LBB8_11:                               # %for.cond10
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB8_16
# %bb.12:                               # %for.body13
                                        #   in Loop: Header=BB8_11 Depth=1
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_14
# %bb.13:                               # %if.then17
                                        #   in Loop: Header=BB8_11 Depth=1
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.14@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB8_14:                               # %if.end19
                                        #   in Loop: Header=BB8_11 Depth=1
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
                                        #   in Loop: Header=BB8_11 Depth=1
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB8_11
.LBB8_16:                               # %for.end25
	xorl	%eax, %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jmp	.LBB8_17
.LBB8_17:                               # %for.cond26
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB8_22
# %bb.18:                               # %for.body29
                                        #   in Loop: Header=BB8_17 Depth=1
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_20
# %bb.19:                               # %if.then33
                                        #   in Loop: Header=BB8_17 Depth=1
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.14@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB8_20:                               # %if.end35
                                        #   in Loop: Header=BB8_17 Depth=1
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
                                        #   in Loop: Header=BB8_17 Depth=1
	movl	-60(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jmp	.LBB8_17
.LBB8_22:                               # %for.end41
	addl	$80, %esp
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
	shll	$24, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$7, %eax
	sarl	$5, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%esi, -28(%ebp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	-28(%ebp), %edx                 # 4-byte Reload
	shrdl	$18, %esi, %edx
	shll	$1, %edx
	shll	$7, %edx
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
	.size	scale_1d.4_fixp, .Lfunc_end10-scale_1d.4_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_1d.3_fixp
	.type	scale_1d.3_fixp,@function
scale_1d.3_fixp:                        # @scale_1d.3_fixp
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
	shll	$24, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$7, %eax
	sarl	$6, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%esi, -28(%ebp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	-28(%ebp), %edx                 # 4-byte Reload
	shrdl	$17, %esi, %edx
	shll	$1, %edx
	shll	$7, %edx
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
	.size	scale_1d.3_fixp, .Lfunc_end11-scale_1d.3_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_1d.8_fixp
	.type	scale_1d.8_fixp,@function
scale_1d.8_fixp:                        # @scale_1d.8_fixp
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
	shll	$24, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$7, %eax
	sarl	$19, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%esi, -28(%ebp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	-28(%ebp), %edx                 # 4-byte Reload
	shrdl	$4, %esi, %edx
	shll	$1, %edx
	shll	$7, %edx
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
	.size	scale_1d.8_fixp, .Lfunc_end12-scale_1d.8_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_1d.6_fixp
	.type	scale_1d.6_fixp,@function
scale_1d.6_fixp:                        # @scale_1d.6_fixp
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
	jmp	.LBB13_1
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %ecx                 # 4-byte Reload
	movl	-8(%ebp), %eax                  # 4-byte Reload
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB13_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-20(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	shll	$24, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$7, %eax
	sarl	$4, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%esi, -28(%ebp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	-28(%ebp), %edx                 # 4-byte Reload
	shrdl	$19, %esi, %edx
	shll	$1, %edx
	shll	$7, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	addl	$24, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end13:
	.size	scale_1d.6_fixp, .Lfunc_end13-scale_1d.6_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_1d.11_fixp
	.type	scale_1d.11_fixp,@function
scale_1d.11_fixp:                       # @scale_1d.11_fixp
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
	jmp	.LBB14_1
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %ecx                 # 4-byte Reload
	movl	-8(%ebp), %eax                  # 4-byte Reload
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB14_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-20(%ebp), %edx                 # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	shll	$24, %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$7, %eax
	sarl	$3, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%esi, -28(%ebp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	-28(%ebp), %edx                 # 4-byte Reload
	shrdl	$20, %esi, %edx
	shll	$1, %edx
	shll	$7, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB14_1
.LBB14_4:                               # %for.end
	addl	$24, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end14:
	.size	scale_1d.11_fixp, .Lfunc_end14-scale_1d.11_fixp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function kernel_gemver.10_fixp
.LCPI15_0:
	.long	0x49000000                      # float 524288
.LCPI15_1:
	.long	0x45800000                      # float 4096
	.text
	.p2align	4, 0x90
	.type	kernel_gemver.10_fixp,@function
kernel_gemver.10_fixp:                  # @kernel_gemver.10_fixp
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
	calll	.L15$pb
.L15$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L15$pb), %eax
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	movl	52(%ebp), %eax
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	movl	48(%ebp), %eax
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	movl	44(%ebp), %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	movl	40(%ebp), %eax
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	movl	36(%ebp), %eax
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	movl	32(%ebp), %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	movl	28(%ebp), %eax
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	movl	24(%ebp), %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB15_1
.LBB15_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB15_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	jmp	.LBB15_3
.LBB15_3:                               # %for.cond1
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-96(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -100(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB15_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-100(%ebp), %ecx                # 4-byte Reload
	movl	-52(%ebp), %edi                 # 4-byte Reload
	movl	-92(%ebp), %esi                 # 4-byte Reload
	movl	-60(%ebp), %edx                 # 4-byte Reload
	movl	-56(%ebp), %eax                 # 4-byte Reload
	imull	$80, %esi, %ebx
	addl	%ebx, %edi
	movl	(%edi,%ecx,4), %edi
	movl	(%eax,%esi,4), %eax
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$7, %eax
	sarl	$8, %edx
	imull	%edx
	movl	%eax, %ebx
	movl	-64(%ebp), %eax                 # 4-byte Reload
	shrdl	$17, %edx, %ebx
	movl	-68(%ebp), %edx                 # 4-byte Reload
	shll	$1, %ebx
	shrl	$1, %edi
	addl	%ebx, %edi
	movl	%edi, -104(%ebp)                # 4-byte Spill
	movl	(%eax,%esi,4), %eax
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$4, %eax
	sarl	$6, %edx
	imull	%edx
	movl	%eax, %edi
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %ebx
	movl	-104(%ebp), %edx                # 4-byte Reload
	shrdl	$20, %ebx, %edi
	shll	$1, %edi
	shrl	$3, %edi
	addl	%edi, %edx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	shll	$1, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-100(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	jmp	.LBB15_3
.LBB15_6:                               # %for.end
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_7
.LBB15_7:                               # %for.inc13
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-92(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB15_1
.LBB15_8:                               # %for.end15
	xorl	%eax, %eax
	movl	%eax, -108(%ebp)                # 4-byte Spill
	jmp	.LBB15_9
.LBB15_9:                               # %for.cond16
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_11 Depth 2
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-108(%ebp), %eax                # 4-byte Reload
	movl	%eax, -112(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB15_16
# %bb.10:                               # %for.body18
                                        #   in Loop: Header=BB15_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, -116(%ebp)                # 4-byte Spill
	jmp	.LBB15_11
.LBB15_11:                              # %for.cond19
                                        #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-116(%ebp), %eax                # 4-byte Reload
	movl	%eax, -120(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB15_14
# %bb.12:                               # %for.body21
                                        #   in Loop: Header=BB15_11 Depth=2
	movl	-76(%ebp), %edi                 # 4-byte Reload
	movl	-112(%ebp), %ecx                # 4-byte Reload
	movl	-120(%ebp), %esi                # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	movl	(%edi,%ecx,4), %edi
	movl	%edi, -124(%ebp)                # 4-byte Spill
	imull	$80, %esi, %edi
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$11, %eax
	imull	%edx
	movl	%edx, %edi
	movl	-80(%ebp), %edx                 # 4-byte Reload
	shrdl	$18, %edi, %eax
	shll	$1, %eax
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$4, %eax
	sarl	$12, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-124(%ebp), %edx                # 4-byte Reload
	shrdl	$14, %edi, %esi
	shll	$1, %esi
	shrl	$3, %esi
	addl	%esi, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.13:                               # %for.inc30
                                        #   in Loop: Header=BB15_11 Depth=2
	movl	-120(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -116(%ebp)                # 4-byte Spill
	jmp	.LBB15_11
.LBB15_14:                              # %for.end32
                                        #   in Loop: Header=BB15_9 Depth=1
	jmp	.LBB15_15
.LBB15_15:                              # %for.inc33
                                        #   in Loop: Header=BB15_9 Depth=1
	movl	-112(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -108(%ebp)                # 4-byte Spill
	jmp	.LBB15_9
.LBB15_16:                              # %for.end35
	xorl	%eax, %eax
	movl	%eax, -128(%ebp)                # 4-byte Spill
	jmp	.LBB15_17
.LBB15_17:                              # %for.cond36
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-128(%ebp), %eax                # 4-byte Reload
	movl	%eax, -132(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB15_20
# %bb.18:                               # %for.body38
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	-132(%ebp), %ecx                # 4-byte Reload
	movl	-84(%ebp), %esi                 # 4-byte Reload
	movl	(%eax,%ecx,4), %edx
	movl	(%esi,%ecx,4), %esi
	shrl	$16, %esi
	addl	%esi, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.19:                               # %for.inc43
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-132(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -128(%ebp)                # 4-byte Spill
	jmp	.LBB15_17
.LBB15_20:                              # %for.end45
	xorl	%eax, %eax
	movl	%eax, -136(%ebp)                # 4-byte Spill
	jmp	.LBB15_21
.LBB15_21:                              # %for.cond46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_23 Depth 2
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-136(%ebp), %eax                # 4-byte Reload
	movl	%eax, -140(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB15_28
# %bb.22:                               # %for.body48
                                        #   in Loop: Header=BB15_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, -144(%ebp)                # 4-byte Spill
	jmp	.LBB15_23
.LBB15_23:                              # %for.cond49
                                        #   Parent Loop BB15_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-144(%ebp), %eax                # 4-byte Reload
	movl	%eax, -148(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB15_26
# %bb.24:                               # %for.body51
                                        #   in Loop: Header=BB15_23 Depth=2
	movl	-72(%ebp), %ebx                 # 4-byte Reload
	movl	-140(%ebp), %ecx                # 4-byte Reload
	movl	-76(%ebp), %esi                 # 4-byte Reload
	movl	-148(%ebp), %edi                # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	flds	(%ebx,%ecx,4)
	leal	(%ecx,%ecx,4), %ebx
	shll	$4, %ebx
	addl	%ebx, %edx
	movl	(%edx,%edi,4), %edx
	shrl	%edx
	shrl	$12, %eax
	imull	%edx
	movl	%eax, %ebx
	movl	-72(%ebp), %eax                 # 4-byte Reload
	shrdl	$18, %edx, %ebx
	movl	-88(%ebp), %edx                 # 4-byte Reload
	addl	%ebx, %ebx
	movl	%ebx, -24(%ebp)
	movl	$0, -20(%ebp)
	fildll	-24(%ebp)
	flds	.LCPI15_0@GOTOFF(%edx)
	fdivrp	%st, %st(1)
	movl	(%esi,%edi,4), %esi
	movl	%esi, -32(%ebp)
	movl	$0, -28(%ebp)
	fildll	-32(%ebp)
	flds	.LCPI15_1@GOTOFF(%edx)
	fdivrp	%st, %st(1)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstps	(%eax,%ecx,4)
# %bb.25:                               # %for.inc60
                                        #   in Loop: Header=BB15_23 Depth=2
	movl	-148(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -144(%ebp)                # 4-byte Spill
	jmp	.LBB15_23
.LBB15_26:                              # %for.end62
                                        #   in Loop: Header=BB15_21 Depth=1
	jmp	.LBB15_27
.LBB15_27:                              # %for.inc63
                                        #   in Loop: Header=BB15_21 Depth=1
	movl	-140(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -136(%ebp)                # 4-byte Spill
	jmp	.LBB15_21
.LBB15_28:                              # %for.end65
	addl	$140, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end15:
	.size	kernel_gemver.10_fixp, .Lfunc_end15-kernel_gemver.10_fixp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function scale_1d.7_fixp
.LCPI16_0:
	.long	0x4b800000                      # float 16777216
	.text
	.p2align	4, 0x90
	.type	scale_1d.7_fixp,@function
scale_1d.7_fixp:                        # @scale_1d.7_fixp
	.cfi_startproc
# %bb.0:                                # %entry
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$36, %esp
	.cfi_offset %esi, -12
	calll	.L16$pb
.L16$pb:
	popl	%eax
.Ltmp4:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp4-.L16$pb), %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	jmp	.LBB16_1
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-20(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %edx                 # 4-byte Reload
	movl	-32(%ebp), %esi                 # 4-byte Reload
	flds	(%eax,%ecx,4)
	shll	$24, %esi
	movl	%esi, -16(%ebp)
	movl	$0, -12(%ebp)
	fildll	-16(%ebp)
	flds	.LCPI16_0@GOTOFF(%edx)
	fdivrp	%st, %st(1)
	fmulp	%st, %st(1)
	fstps	(%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	jmp	.LBB16_1
.LBB16_4:                               # %for.end
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end16:
	.size	scale_1d.7_fixp, .Lfunc_end16-scale_1d.7_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function init_array.12_fixp
	.type	init_array.12_fixp,@function
init_array.12_fixp:                     # @init_array.12_fixp
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
	subl	$236, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L17$pb
.L17$pb:
	popl	%eax
.Ltmp5:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp5-.L17$pb), %eax
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
.LBB17_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-68(%ebp), %ecx                 # 4-byte Reload
	movl	-20(%ebp), %edi                 # 4-byte Reload
	shrl	%edi
	movl	%edi, -88(%ebp)                 # 4-byte Spill
	movl	%esp, %eax
	movl	%edi, 8(%eax)
	andl	$31, %ecx
	shll	$20, %ecx
	movl	%ecx, -84(%ebp)                 # 4-byte Spill
	movl	%ecx, 4(%eax)
	movl	$0, 12(%eax)
	movl	$0, (%eax)
	calll	__moddi3@PLT
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-84(%ebp), %ecx                 # 4-byte Reload
	movl	%esp, %esi
	movl	%edi, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	$0, 12(%esi)
	movl	$0, (%esi)
	testl	%ecx, %ecx
	sets	%cl
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
	jne	.LBB17_10
# %bb.9:                                # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -72(%ebp)                 # 4-byte Spill
.LBB17_10:                              # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-88(%ebp), %edi                 # 4-byte Reload
	movl	-68(%ebp), %ecx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-72(%ebp), %edx                 # 4-byte Reload
	shrl	%edx
	andl	$67108863, %edx                 # imm = 0x3FFFFFF
	movl	%edx, (%eax,%ecx,4)
	shll	$26, %ecx
	addl	$67108864, %ecx                 # imm = 0x4000000
	andl	$2080374784, %ecx               # imm = 0x7C000000
	movl	%esp, %eax
	movl	%edi, 8(%eax)
	shrl	$6, %ecx
	movl	%ecx, -104(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	movl	$0, 12(%eax)
	movl	$0, (%eax)
	calll	__moddi3@PLT
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-104(%ebp), %ecx                # 4-byte Reload
	movl	%esp, %esi
	movl	%edi, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	$0, 12(%esi)
	movl	$0, (%esi)
	testl	%ecx, %ecx
	sets	%cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -97(%ebp)                  # 1-byte Spill
	calll	__divdi3@PLT
	movb	-97(%ebp), %cl                  # 1-byte Reload
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	jne	.LBB17_12
# %bb.11:                               # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-96(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -92(%ebp)                 # 4-byte Spill
.LBB17_12:                              # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-92(%ebp), %ecx                 # 4-byte Reload
	movl	%ecx, -128(%ebp)                # 4-byte Spill
	movl	%ecx, %eax
	shll	$4, %eax
	movl	%eax, -124(%ebp)                # 4-byte Spill
	movl	%esp, %eax
	andl	$268435455, %ecx                # imm = 0xFFFFFFF
	movl	%ecx, -120(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	movl	$0, 12(%eax)
	movl	$1073741824, 8(%eax)            # imm = 0x40000000
	movl	$0, (%eax)
	sets	%al
	movb	%al, -109(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-120(%ebp), %ecx                # 4-byte Reload
	movl	%eax, -116(%ebp)                # 4-byte Spill
	movl	%esp, %eax
	movl	%ecx, 4(%eax)
	movl	$0, (%eax)
	movl	$1073741824, 8(%eax)            # imm = 0x40000000
	movl	$0, 12(%eax)
	calll	__moddi3@PLT
	movl	%eax, %ecx
	movl	-116(%ebp), %eax                # 4-byte Reload
	movl	%edx, %esi
	movb	-109(%ebp), %dl                 # 1-byte Reload
	orl	%esi, %ecx
	setne	%cl
	andb	%dl, %cl
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -108(%ebp)                # 4-byte Spill
	jne	.LBB17_14
# %bb.13:                               # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-116(%ebp), %eax                # 4-byte Reload
	movl	%eax, -108(%ebp)                # 4-byte Spill
.LBB17_14:                              # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-124(%ebp), %ecx                # 4-byte Reload
	movl	-128(%ebp), %edi                # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-108(%ebp), %esi                # 4-byte Reload
	shrl	$4, %esi
	andl	$67108863, %esi                 # imm = 0x3FFFFFF
	movl	%esi, (%eax,%edx,4)
	movl	%esp, %eax
	shll	$30, %edi
	movl	%edi, -148(%ebp)                # 4-byte Spill
	movl	%edi, (%eax)
	shrl	$6, %ecx
	movl	%ecx, -144(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	movl	$0, 12(%eax)
	movl	$1073741824, 8(%eax)            # imm = 0x40000000
	calll	__moddi3@PLT
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-144(%ebp), %ecx                # 4-byte Reload
	movl	%esp, %esi
	movl	%edi, (%esi)
	movl	%ecx, 4(%esi)
	movl	$0, 12(%esi)
	movl	$1073741824, 8(%esi)            # imm = 0x40000000
	orl	%edx, %eax
	setne	%al
	testl	%ecx, %ecx
	sets	%cl
	movb	%cl, -138(%ebp)                 # 1-byte Spill
	andb	%cl, %al
	movb	%al, -137(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-137(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -136(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -132(%ebp)                # 4-byte Spill
	jne	.LBB17_16
# %bb.15:                               # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-136(%ebp), %eax                # 4-byte Reload
	movl	%eax, -132(%ebp)                # 4-byte Spill
.LBB17_16:                              # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-144(%ebp), %edi                # 4-byte Reload
	movl	-148(%ebp), %ecx                # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-132(%ebp), %esi                # 4-byte Reload
	shrl	$2, %esi
	andl	$134217727, %esi                # imm = 0x7FFFFFF
	movl	%esi, (%eax,%edx,4)
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	%edi, 4(%eax)
	movl	$0, 12(%eax)
	movl	$1610612736, 8(%eax)            # imm = 0x60000000
	calll	__moddi3@PLT
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-148(%ebp), %ecx                # 4-byte Reload
	movl	%esp, %esi
	movl	%ecx, (%esi)
	movb	-138(%ebp), %cl                 # 1-byte Reload
	movl	%edi, 4(%esi)
	movl	$0, 12(%esi)
	movl	$1610612736, 8(%esi)            # imm = 0x60000000
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -157(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-157(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -156(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -152(%ebp)                # 4-byte Spill
	jne	.LBB17_18
# %bb.17:                               # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-156(%ebp), %eax                # 4-byte Reload
	movl	%eax, -152(%ebp)                # 4-byte Spill
.LBB17_18:                              # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-124(%ebp), %ecx                # 4-byte Reload
	movl	-128(%ebp), %edi                # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-152(%ebp), %esi                # 4-byte Reload
	shrl	%esi
	andl	$268435455, %esi                # imm = 0xFFFFFFF
	movl	%esi, (%eax,%edx,4)
	movl	%esp, %eax
	shll	$28, %edi
	movl	%edi, -180(%ebp)                # 4-byte Spill
	movl	%edi, (%eax)
	shrl	$8, %ecx
	movl	%ecx, -176(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	movl	$0, 12(%eax)
	movl	$1073741824, 8(%eax)            # imm = 0x40000000
	calll	__moddi3@PLT
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-176(%ebp), %ecx                # 4-byte Reload
	movl	%esp, %esi
	movl	%edi, (%esi)
	movl	%ecx, 4(%esi)
	movl	$0, 12(%esi)
	movl	$1073741824, 8(%esi)            # imm = 0x40000000
	orl	%edx, %eax
	setne	%al
	testl	%ecx, %ecx
	sets	%cl
	movb	%cl, -170(%ebp)                 # 1-byte Spill
	andb	%cl, %al
	movb	%al, -169(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-169(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -168(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -164(%ebp)                # 4-byte Spill
	jne	.LBB17_20
# %bb.19:                               # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-168(%ebp), %eax                # 4-byte Reload
	movl	%eax, -164(%ebp)                # 4-byte Spill
.LBB17_20:                              # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-176(%ebp), %edi                # 4-byte Reload
	movl	-180(%ebp), %ecx                # 4-byte Reload
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-164(%ebp), %esi                # 4-byte Reload
	andl	$268435455, %esi                # imm = 0xFFFFFFF
	movl	%esi, (%eax,%edx,4)
	movl	%esp, %eax
	movl	%ecx, (%eax)
	movl	%edi, 4(%eax)
	movl	$0, 12(%eax)
	movl	$1207959552, 8(%eax)            # imm = 0x48000000
	calll	__moddi3@PLT
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-180(%ebp), %ecx                # 4-byte Reload
	movl	%esp, %esi
	movl	%ecx, (%esi)
	movb	-170(%ebp), %cl                 # 1-byte Reload
	movl	%edi, 4(%esi)
	movl	$0, 12(%esi)
	movl	$1207959552, 8(%esi)            # imm = 0x48000000
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
	jne	.LBB17_22
# %bb.21:                               # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-188(%ebp), %eax                # 4-byte Reload
	movl	%eax, -184(%ebp)                # 4-byte Spill
.LBB17_22:                              # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-68(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %edx                 # 4-byte Reload
	movl	-60(%ebp), %esi                 # 4-byte Reload
	movl	-184(%ebp), %edi                # 4-byte Reload
	addl	%edi, %edi
	andl	$536870910, %edi                # imm = 0x1FFFFFFE
	movl	%edi, (%esi,%ecx,4)
	movl	$0, (%edx,%ecx,4)
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -196(%ebp)                # 4-byte Spill
.LBB17_3:                               # %for.cond42
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-196(%ebp), %eax                # 4-byte Reload
	movl	%eax, -200(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_6
# %bb.4:                                # %for.body45
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-64(%ebp), %ebx                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-200(%ebp), %edx                # 4-byte Reload
	movl	-68(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	cltd
	idivl	%ecx
	shll	$27, %edx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -220(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -228(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
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
	movb	%al, -209(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-209(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -208(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -204(%ebp)                # 4-byte Spill
	jne	.LBB17_24
# %bb.23:                               # %for.body45
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-208(%ebp), %eax                # 4-byte Reload
	movl	%eax, -204(%ebp)                # 4-byte Spill
.LBB17_24:                              # %for.body45
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-200(%ebp), %ecx                # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-68(%ebp), %esi                 # 4-byte Reload
	movl	-204(%ebp), %edx                # 4-byte Reload
	shll	$5, %edx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	shrl	$12, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-200(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -196(%ebp)                # 4-byte Spill
	jmp	.LBB17_3
.LBB17_6:                               # %for.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_7
.LBB17_7:                               # %for.inc51
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-68(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB17_1
.LBB17_8:                               # %for.end53
	addl	$236, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end17:
	.size	init_array.12_fixp, .Lfunc_end17-init_array.12_fixp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scale_2d.13_fixp
	.type	scale_2d.13_fixp,@function
scale_2d.13_fixp:                       # @scale_2d.13_fixp
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
	jmp	.LBB18_1
.LBB18_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB18_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB18_3
.LBB18_3:                               # %for.cond1
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB18_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB18_3 Depth=2
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
	sarl	$12, %edx
	imull	%edx
	movl	%eax, %ebx
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%ebx, -48(%ebp)                 # 4-byte Spill
	movl	%edx, %ebx
	movl	-48(%ebp), %edx                 # 4-byte Reload
	shrdl	$11, %ebx, %edx
	shll	$1, %edx
	imull	%edi, %esi
	shll	$2, %esi
	addl	%esi, %eax
	shll	$7, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB18_3 Depth=2
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB18_3
.LBB18_6:                               # %for.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_7
.LBB18_7:                               # %for.inc7
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB18_1
.LBB18_8:                               # %for.end9
	addl	$36, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end18:
	.size	scale_2d.13_fixp, .Lfunc_end18-scale_2d.13_fixp
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
	.addrsig_sym scale_scalar.1_fixp
	.addrsig_sym scale_1d.4_fixp
	.addrsig_sym scale_1d.3_fixp
	.addrsig_sym scale_1d.8_fixp
	.addrsig_sym scale_1d.6_fixp
	.addrsig_sym scale_1d.11_fixp
	.addrsig_sym kernel_gemver.10_fixp
	.addrsig_sym scale_1d.7_fixp
	.addrsig_sym init_array.12_fixp
	.addrsig_sym scale_2d.13_fixp
	.addrsig_sym x_float
	.addrsig_sym w_float
	.addrsig_sym A_float
	.addrsig_sym stderr

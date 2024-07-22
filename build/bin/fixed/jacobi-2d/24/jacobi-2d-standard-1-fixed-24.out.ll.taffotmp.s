	.text
	.file	"jacobi-2d.c"
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
	pushl	%esi
	subl	$1856, %esp                     # imm = 0x740
	.cfi_offset %esi, -16
	.cfi_offset %ebx, -12
	calll	.L3$pb
.L3$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L3$pb), %ebx
	movl	%ebx, -1824(%ebp)               # 4-byte Spill
	leal	-908(%ebp), %ecx
	leal	-1808(%ebp), %eax
	movl	$15, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	calll	init_array.2_fixp
	movl	-1824(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-1824(%ebp), %ebx               # 4-byte Reload
	leal	-908(%ebp), %ecx
	leal	-1808(%ebp), %eax
	movl	$10, (%esp)
	movl	$15, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 12(%esp)
	calll	kernel_jacobi_2d.1_fixp
	movl	-1824(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -1820(%ebp)               # 4-byte Spill
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-1820(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1828(%ebp)               # 4-byte Spill
	cmpl	$15, %eax
	jge	.LBB3_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1832(%ebp)               # 4-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %for.cond6
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1832(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1836(%ebp)               # 4-byte Spill
	cmpl	$15, %eax
	jge	.LBB3_6
# %bb.4:                                # %for.body8
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-1836(%ebp), %ecx               # 4-byte Reload
	movl	-1824(%ebp), %eax               # 4-byte Reload
	movl	-1828(%ebp), %edx               # 4-byte Reload
	imull	$60, %edx, %edx
	leal	-908(%ebp,%edx), %esi
	movl	(%esi,%ecx,4), %esi
	movl	%esi, -1816(%ebp)
	movl	$0, -1812(%ebp)
	fildll	-1816(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	leal	A_float@GOTOFF(%eax,%edx), %eax
	fstps	(%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-1836(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1832(%ebp)               # 4-byte Spill
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc12
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-1828(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1820(%ebp)               # 4-byte Spill
	jmp	.LBB3_1
.LBB3_8:                                # %for.end14
	movl	-1824(%ebp), %ebx               # 4-byte Reload
	leal	A_float@GOTOFF(%ebx), %eax
	movl	$15, (%esp)
	movl	%eax, 4(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$1856, %esp                     # imm = 0x740
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
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_10
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %for.cond1
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_8
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-36(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %edx                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	addl	%ecx, %eax
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-24(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.4@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_6:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-24(%ebp), %ebx                 # 4-byte Reload
	movl	-36(%ebp), %edx                 # 4-byte Reload
	movl	-20(%ebp), %eax                 # 4-byte Reload
	movl	-28(%ebp), %esi                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	imull	$60, %esi, %esi
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
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	jmp	.LBB4_3
.LBB4_8:                                # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_9
.LBB4_9:                                # %for.inc7
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-28(%ebp), %eax                 # 4-byte Reload
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
	.p2align	4, 0x90                         # -- Begin function kernel_jacobi_2d.1_fixp
	.type	kernel_jacobi_2d.1_fixp,@function
kernel_jacobi_2d.1_fixp:                # @kernel_jacobi_2d.1_fixp
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
	subl	$64, %esp
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
	jmp	.LBB5_1
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
                                        #       Child Loop BB5_5 Depth 3
                                        #     Child Loop BB5_11 Depth 2
                                        #       Child Loop BB5_13 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_20
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %for.cond1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_5 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_10
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	$1, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %for.cond4
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_8
# %bb.6:                                # %for.body7
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %esi                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	imull	$60, %esi, %edi
	movl	%eax, %edx
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	imull	$60, %esi, %ebx
	movl	%eax, %edi
	addl	%ebx, %edi
	movl	%ecx, %ebx
	subl	$1, %ebx
	movl	(%edi,%ebx,4), %edi
	shrl	$1, %edx
	shrl	$1, %edi
	addl	%edi, %edx
	imull	$60, %esi, %ebx
	movl	%eax, %edi
	addl	%ebx, %edi
	movl	%ecx, %ebx
	addl	$1, %ebx
	movl	(%edi,%ebx,4), %edi
	shrl	$1, %edi
	addl	%edi, %edx
	movl	%esi, %edi
	addl	$1, %edi
	imull	$60, %edi, %ebx
	movl	%eax, %edi
	addl	%ebx, %edi
	movl	(%edi,%ecx,4), %edi
	shrl	$1, %edx
	shrl	$2, %edi
	addl	%edi, %edx
	movl	%esi, %edi
	subl	$1, %edi
	imull	$60, %edi, %edi
	addl	%edi, %eax
	movl	(%eax,%ecx,4), %eax
	shrl	$2, %eax
	addl	%eax, %edx
	movl	$13421773, %eax                 # imm = 0xCCCCCD
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %eax
	imull	%edx
	movl	%eax, %edi
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -56(%ebp)                 # 4-byte Spill
	movl	%edx, %edi
	movl	-56(%ebp), %edx                 # 4-byte Reload
	shrdl	$24, %edi, %edx
	shll	$1, %edx
	imull	$60, %esi, %esi
	addl	%esi, %eax
	shll	$2, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB5_5
.LBB5_8:                                # %for.end
                                        #   in Loop: Header=BB5_3 Depth=2
	jmp	.LBB5_9
.LBB5_9:                                # %for.inc26
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_10:                               # %for.end28
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, %eax
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	jmp	.LBB5_11
.LBB5_11:                               # %for.cond29
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_13 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_18
# %bb.12:                               # %for.body32
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	$1, %eax
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	jmp	.LBB5_13
.LBB5_13:                               # %for.cond33
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_16
# %bb.14:                               # %for.body36
                                        #   in Loop: Header=BB5_13 Depth=3
	movl	-72(%ebp), %ecx                 # 4-byte Reload
	movl	-64(%ebp), %esi                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	imull	$60, %esi, %edi
	movl	%eax, %edx
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	imull	$60, %esi, %ebx
	movl	%eax, %edi
	addl	%ebx, %edi
	movl	%ecx, %ebx
	subl	$1, %ebx
	movl	(%edi,%ebx,4), %edi
	shrl	$1, %edx
	shrl	$1, %edi
	addl	%edi, %edx
	imull	$60, %esi, %ebx
	movl	%eax, %edi
	addl	%ebx, %edi
	movl	%ecx, %ebx
	addl	$1, %ebx
	movl	(%edi,%ebx,4), %edi
	shrl	$1, %edx
	shrl	$2, %edi
	addl	%edi, %edx
	movl	%esi, %edi
	addl	$1, %edi
	imull	$60, %edi, %ebx
	movl	%eax, %edi
	addl	%ebx, %edi
	movl	(%edi,%ecx,4), %edi
	shrl	$2, %edi
	addl	%edi, %edx
	movl	%esi, %edi
	subl	$1, %edi
	imull	$60, %edi, %edi
	addl	%edi, %eax
	movl	(%eax,%ecx,4), %eax
	shrl	$2, %eax
	addl	%eax, %edx
	movl	$13421773, %eax                 # imm = 0xCCCCCD
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %eax
	imull	%edx
	movl	%eax, %edi
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -76(%ebp)                 # 4-byte Spill
	movl	%edx, %edi
	movl	-76(%ebp), %edx                 # 4-byte Reload
	shrdl	$24, %edi, %edx
	shll	$1, %edx
	imull	$60, %esi, %esi
	addl	%esi, %eax
	shll	$2, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.15:                               # %for.inc58
                                        #   in Loop: Header=BB5_13 Depth=3
	movl	-72(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	jmp	.LBB5_13
.LBB5_16:                               # %for.end60
                                        #   in Loop: Header=BB5_11 Depth=2
	jmp	.LBB5_17
.LBB5_17:                               # %for.inc61
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-64(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	jmp	.LBB5_11
.LBB5_18:                               # %for.end63
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_19
.LBB5_19:                               # %for.inc64
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_20:                               # %for.end66
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	kernel_jacobi_2d.1_fixp, .Lfunc_end5-kernel_jacobi_2d.1_fixp
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
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB6_3
.LBB6_3:                                # %for.cond3
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_6
# %bb.4:                                # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %edx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	shll	$27, %eax
	addl	$2, %edx
	shll	$26, %edx
	sarl	$5, %eax
	sarl	$4, %edx
	imull	%edx
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	movl	%edx, %eax
	movl	-76(%ebp), %edx                 # 4-byte Reload
	shrdl	$22, %eax, %edx
	movl	$2147483648, %eax               # imm = 0x80000000
	shrl	$8, %eax
	addl	%eax, %edx
	shll	$28, %ecx
	shrl	$1, %ecx
	sarl	$5, %ecx
	movl	%ecx, -64(%ebp)                 # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$22, %ecx
	movl	%ecx, -72(%ebp)                 # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$22, %edx, %ecx
	movl	%ecx, -68(%ebp)                 # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-72(%ebp), %ebx                 # 4-byte Reload
	movl	-68(%ebp), %ecx                 # 4-byte Reload
	movl	%eax, %edi
	movl	-64(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -60(%ebp)                 # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-60(%ebp), %eax                 # 4-byte Reload
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
	movb	%al, -53(%ebp)                  # 1-byte Spill
	calll	__divdi3@PLT
	movb	-53(%ebp), %cl                  # 1-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jne	.LBB6_10
# %bb.9:                                # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
.LBB6_10:                               # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %edx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %esi                 # 4-byte Reload
	movl	-48(%ebp), %edi                 # 4-byte Reload
	shll	$4, %edi
	imull	$60, %eax, %eax
	addl	%eax, %esi
	movl	-36(%ebp), %eax                 # 4-byte Reload
	shll	$1, %edi
	movl	%edi, (%esi,%edx,4)
	shll	$27, %eax
	addl	$3, %edx
	shll	$26, %edx
	sarl	$5, %eax
	sarl	$4, %edx
	imull	%edx
	movl	%eax, -108(%ebp)                # 4-byte Spill
	movl	%edx, %eax
	movl	-108(%ebp), %edx                # 4-byte Reload
	shrdl	$22, %eax, %edx
	movl	$3221225472, %eax               # imm = 0xC0000000
	shrl	$8, %eax
	addl	%eax, %edx
	shll	$28, %ecx
	shrl	$1, %ecx
	sarl	$5, %ecx
	movl	%ecx, -96(%ebp)                 # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$22, %ecx
	movl	%ecx, -104(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$22, %edx, %ecx
	movl	%ecx, -100(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-104(%ebp), %ebx                # 4-byte Reload
	movl	-100(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-96(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -92(%ebp)                 # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-92(%ebp), %eax                 # 4-byte Reload
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
	movb	%al, -85(%ebp)                  # 1-byte Spill
	calll	__divdi3@PLT
	movb	-85(%ebp), %cl                  # 1-byte Reload
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	jne	.LBB6_12
# %bb.11:                               # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-84(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -80(%ebp)                 # 4-byte Spill
.LBB6_12:                               # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-44(%ebp), %ecx                 # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-36(%ebp), %esi                 # 4-byte Reload
	movl	-80(%ebp), %edx                 # 4-byte Reload
	shll	$4, %edx
	imull	$60, %esi, %esi
	addl	%esi, %eax
	shll	$1, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc19
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB6_1
.LBB6_8:                                # %for.end21
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
	.type	A_float,@object                 # @A_float
	.bss
	.globl	A_float
	.p2align	2
A_float:
	.zero	900
	.size	A_float, 900

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
	.addrsig_sym kernel_jacobi_2d.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym A_float
	.addrsig_sym stderr

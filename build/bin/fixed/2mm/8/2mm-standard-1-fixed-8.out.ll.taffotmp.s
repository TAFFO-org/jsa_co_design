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
	subl	$2300, %esp                     # imm = 0x8FC
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L3$pb
.L3$pb:
	popl	%eax
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L3$pb), %eax
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
	calll	init_array.2_fixp
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
	calll	kernel_2mm.1_fixp
	movl	-2232(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -2228(%ebp)               # 4-byte Spill
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-2228(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2248(%ebp)               # 4-byte Spill
	cmpl	$8, %eax
	jge	.LBB3_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -2252(%ebp)               # 4-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %for.cond17
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2252(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2256(%ebp)               # 4-byte Spill
	cmpl	$14, %eax
	jge	.LBB3_6
# %bb.4:                                # %for.body19
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-2256(%ebp), %ecx               # 4-byte Reload
	movl	-2232(%ebp), %eax               # 4-byte Reload
	movl	-2248(%ebp), %edx               # 4-byte Reload
	imull	$56, %edx, %edx
	leal	-2212(%ebp,%edx), %esi
	movl	(%esi,%ecx,4), %esi
	movl	%esi, -2224(%ebp)
	movl	$0, -2220(%ebp)
	fildll	-2224(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	leal	D_float@GOTOFF(%eax,%edx), %eax
	fstps	(%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-2256(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2252(%ebp)               # 4-byte Spill
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc23
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-2248(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2228(%ebp)               # 4-byte Spill
	jmp	.LBB3_1
.LBB3_8:                                # %for.end25
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
	leal	.L.str.10@GOTOFF(%ebx), %eax
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
	.p2align	4, 0x90                         # -- Begin function kernel_2mm.1_fixp
	.type	kernel_2mm.1_fixp,@function
kernel_2mm.1_fixp:                      # @kernel_2mm.1_fixp
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
	jmp	.LBB5_1
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
                                        #       Child Loop BB5_5 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %for.cond1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_5 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-68(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_10
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-72(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	-64(%ebp), %edx                 # 4-byte Reload
	imull	$40, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
.LBB5_5:                                # %for.cond5
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -80(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_8
# %bb.6:                                # %for.body7
                                        #   in Loop: Header=BB5_5 Depth=3
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
	sarl	$1, %edx
	imull	%edx
	movl	%edx, %ebx
	movl	-52(%ebp), %edx                 # 4-byte Reload
	shrdl	$29, %ebx, %eax
	shll	$1, %eax
	imull	$40, %edi, %edi
	addl	%edi, %edx
	movl	(%edx,%ecx,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$1, %eax
	sarl	$2, %edx
	imull	%edx
	movl	%eax, %edi
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -84(%ebp)                 # 4-byte Spill
	movl	%edx, %edi
	movl	-84(%ebp), %edx                 # 4-byte Reload
	shrdl	$28, %edi, %edx
	shll	$1, %edx
	imull	$40, %esi, %esi
	addl	%esi, %eax
	addl	(%eax,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-80(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -76(%ebp)                 # 4-byte Spill
	jmp	.LBB5_5
.LBB5_8:                                # %for.end
                                        #   in Loop: Header=BB5_3 Depth=2
	jmp	.LBB5_9
.LBB5_9:                                # %for.inc15
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-72(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_10:                               # %for.end17
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_11
.LBB5_11:                               # %for.inc18
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-64(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_12:                               # %for.end20
	xorl	%eax, %eax
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	jmp	.LBB5_13
.LBB5_13:                               # %for.cond21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_15 Depth 2
                                        #       Child Loop BB5_17 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-88(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_24
# %bb.14:                               # %for.body23
                                        #   in Loop: Header=BB5_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	jmp	.LBB5_15
.LBB5_15:                               # %for.cond24
                                        #   Parent Loop BB5_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-96(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -100(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_22
# %bb.16:                               # %for.body26
                                        #   in Loop: Header=BB5_15 Depth=2
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
	sarl	$3, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-112(%ebp), %eax                # 4-byte Reload
	movl	%esi, -108(%ebp)                # 4-byte Spill
	movl	%edx, %esi
	movl	-108(%ebp), %edx                # 4-byte Reload
	shrdl	$26, %esi, %edx
	shll	$1, %edx
	movl	%edx, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -104(%ebp)                # 4-byte Spill
.LBB5_17:                               # %for.cond30
                                        #   Parent Loop BB5_13 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-104(%ebp), %eax                # 4-byte Reload
	movl	%eax, -116(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_20
# %bb.18:                               # %for.body32
                                        #   in Loop: Header=BB5_17 Depth=3
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
	sarl	$2, %eax
	sarl	$4, %edx
	imull	%edx
	movl	%eax, %edi
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	%edi, -120(%ebp)                # 4-byte Spill
	movl	%edx, %edi
	movl	-120(%ebp), %edx                # 4-byte Reload
	shrdl	$26, %edi, %edx
	shll	$1, %edx
	imull	$56, %esi, %esi
	addl	%esi, %eax
	addl	(%eax,%ecx,4), %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.19:                               # %for.inc41
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-116(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -104(%ebp)                # 4-byte Spill
	jmp	.LBB5_17
.LBB5_20:                               # %for.end43
                                        #   in Loop: Header=BB5_15 Depth=2
	jmp	.LBB5_21
.LBB5_21:                               # %for.inc44
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	-100(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	jmp	.LBB5_15
.LBB5_22:                               # %for.end46
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_23
.LBB5_23:                               # %for.inc47
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-92(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	jmp	.LBB5_13
.LBB5_24:                               # %for.end49
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	kernel_2mm.1_fixp, .Lfunc_end5-kernel_2mm.1_fixp
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
	subl	$252, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L6$pb
.L6$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L6$pb), %eax
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
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	jmp	.LBB6_3
.LBB6_3:                                # %for.cond3
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-64(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_6
# %bb.4:                                # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
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
	jne	.LBB6_42
# %bb.41:                               # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-76(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -72(%ebp)                 # 4-byte Spill
.LBB6_42:                               # %for.body5
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-68(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-60(%ebp), %esi                 # 4-byte Reload
	movl	-72(%ebp), %edx                 # 4-byte Reload
	shll	$2, %edx
	imull	$48, %esi, %esi
	addl	%esi, %eax
	shll	$2, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-68(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc8
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-60(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB6_1
.LBB6_8:                                # %for.end10
	xorl	%eax, %eax
	movl	%eax, -100(%ebp)                # 4-byte Spill
	jmp	.LBB6_9
.LBB6_9:                                # %for.cond11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-100(%ebp), %eax                # 4-byte Reload
	movl	%eax, -104(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_16
# %bb.10:                               # %for.body14
                                        #   in Loop: Header=BB6_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, -108(%ebp)                # 4-byte Spill
	jmp	.LBB6_11
.LBB6_11:                               # %for.cond15
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-108(%ebp), %eax                # 4-byte Reload
	movl	%eax, -112(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_14
# %bb.12:                               # %for.body18
                                        #   in Loop: Header=BB6_11 Depth=2
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
	jne	.LBB6_44
# %bb.43:                               # %for.body18
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-120(%ebp), %eax                # 4-byte Reload
	movl	%eax, -116(%ebp)                # 4-byte Spill
.LBB6_44:                               # %for.body18
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-112(%ebp), %ecx                # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	-104(%ebp), %esi                # 4-byte Reload
	movl	-116(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	imull	$40, %esi, %esi
	addl	%esi, %eax
	movl	%edx, (%eax,%ecx,4)
# %bb.13:                               # %for.inc27
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-112(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -108(%ebp)                # 4-byte Spill
	jmp	.LBB6_11
.LBB6_14:                               # %for.end29
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_15
.LBB6_15:                               # %for.inc30
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-104(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -100(%ebp)                # 4-byte Spill
	jmp	.LBB6_9
.LBB6_16:                               # %for.end32
	xorl	%eax, %eax
	movl	%eax, -144(%ebp)                # 4-byte Spill
	jmp	.LBB6_17
.LBB6_17:                               # %for.cond33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_19 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-144(%ebp), %eax                # 4-byte Reload
	movl	%eax, -148(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_24
# %bb.18:                               # %for.body36
                                        #   in Loop: Header=BB6_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, -152(%ebp)                # 4-byte Spill
	jmp	.LBB6_19
.LBB6_19:                               # %for.cond37
                                        #   Parent Loop BB6_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-152(%ebp), %eax                # 4-byte Reload
	movl	%eax, -156(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_22
# %bb.20:                               # %for.body40
                                        #   in Loop: Header=BB6_19 Depth=2
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
	jne	.LBB6_46
# %bb.45:                               # %for.body40
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-164(%ebp), %eax                # 4-byte Reload
	movl	%eax, -160(%ebp)                # 4-byte Spill
.LBB6_46:                               # %for.body40
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-156(%ebp), %ecx                # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	-148(%ebp), %esi                # 4-byte Reload
	movl	-160(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	imull	$56, %esi, %esi
	addl	%esi, %eax
	movl	%edx, (%eax,%ecx,4)
# %bb.21:                               # %for.inc50
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-156(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -152(%ebp)                # 4-byte Spill
	jmp	.LBB6_19
.LBB6_22:                               # %for.end52
                                        #   in Loop: Header=BB6_17 Depth=1
	jmp	.LBB6_23
.LBB6_23:                               # %for.inc53
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-148(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -144(%ebp)                # 4-byte Spill
	jmp	.LBB6_17
.LBB6_24:                               # %for.end55
	xorl	%eax, %eax
	movl	%eax, -188(%ebp)                # 4-byte Spill
	jmp	.LBB6_25
.LBB6_25:                               # %for.cond56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_27 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-188(%ebp), %eax                # 4-byte Reload
	movl	%eax, -192(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_32
# %bb.26:                               # %for.body59
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -196(%ebp)                # 4-byte Spill
	jmp	.LBB6_27
.LBB6_27:                               # %for.cond60
                                        #   Parent Loop BB6_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-196(%ebp), %eax                # 4-byte Reload
	movl	%eax, -200(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_30
# %bb.28:                               # %for.body63
                                        #   in Loop: Header=BB6_27 Depth=2
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
	jne	.LBB6_48
# %bb.47:                               # %for.body63
                                        #   in Loop: Header=BB6_27 Depth=2
	movl	-208(%ebp), %eax                # 4-byte Reload
	movl	%eax, -204(%ebp)                # 4-byte Spill
.LBB6_48:                               # %for.body63
                                        #   in Loop: Header=BB6_27 Depth=2
	movl	-200(%ebp), %ecx                # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-192(%ebp), %esi                # 4-byte Reload
	movl	-204(%ebp), %edx                # 4-byte Reload
	shll	$4, %edx
	imull	$56, %esi, %esi
	addl	%esi, %eax
	shrl	$4, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.29:                               # %for.inc72
                                        #   in Loop: Header=BB6_27 Depth=2
	movl	-200(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -196(%ebp)                # 4-byte Spill
	jmp	.LBB6_27
.LBB6_30:                               # %for.end74
                                        #   in Loop: Header=BB6_25 Depth=1
	jmp	.LBB6_31
.LBB6_31:                               # %for.inc75
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-192(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -188(%ebp)                # 4-byte Spill
	jmp	.LBB6_25
.LBB6_32:                               # %for.end77
	xorl	%eax, %eax
	movl	%eax, -232(%ebp)                # 4-byte Spill
	jmp	.LBB6_33
.LBB6_33:                               # %for.cond78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_35 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-232(%ebp), %eax                # 4-byte Reload
	movl	%eax, -236(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_40
# %bb.34:                               # %for.body81
                                        #   in Loop: Header=BB6_33 Depth=1
	xorl	%eax, %eax
	movl	%eax, -240(%ebp)                # 4-byte Spill
	jmp	.LBB6_35
.LBB6_35:                               # %for.cond82
                                        #   Parent Loop BB6_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-240(%ebp), %eax                # 4-byte Reload
	movl	%eax, -244(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_38
# %bb.36:                               # %for.body85
                                        #   in Loop: Header=BB6_35 Depth=2
	movl	-244(%ebp), %ecx                # 4-byte Reload
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	-236(%ebp), %edx                # 4-byte Reload
	imull	$40, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
# %bb.37:                               # %for.inc88
                                        #   in Loop: Header=BB6_35 Depth=2
	movl	-244(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -240(%ebp)                # 4-byte Spill
	jmp	.LBB6_35
.LBB6_38:                               # %for.end90
                                        #   in Loop: Header=BB6_33 Depth=1
	jmp	.LBB6_39
.LBB6_39:                               # %for.inc91
                                        #   in Loop: Header=BB6_33 Depth=1
	movl	-236(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -232(%ebp)                # 4-byte Spill
	jmp	.LBB6_33
.LBB6_40:                               # %for.end93
	addl	$252, %esp
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
	.addrsig_sym kernel_2mm.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym D_float
	.addrsig_sym stderr

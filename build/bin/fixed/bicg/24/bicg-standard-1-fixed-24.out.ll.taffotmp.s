	.text
	.file	"bicg.c"
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
	pushl	%edi
	pushl	%esi
	subl	$2172, %esp                     # imm = 0x87C
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L3$pb
.L3$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L3$pb), %ebx
	movl	%ebx, -2136(%ebp)               # 4-byte Spill
	leal	-1772(%ebp), %edi
	leal	-2108(%ebp), %esi
	leal	-2020(%ebp), %edx
	leal	-1852(%ebp), %ecx
	leal	-1940(%ebp), %eax
	movl	$20, (%esp)
	movl	$22, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, 24(%esp)
	calll	init_array.2_fixp
	movl	-2136(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-2136(%ebp), %ebx               # 4-byte Reload
	leal	-1772(%ebp), %edi
	leal	-1852(%ebp), %esi
	leal	-1940(%ebp), %edx
	leal	-2020(%ebp), %ecx
	leal	-2108(%ebp), %eax
	movl	$20, (%esp)
	movl	$22, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, 24(%esp)
	calll	kernel_bicg.1_fixp
	movl	-2136(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -2132(%ebp)               # 4-byte Spill
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-2132(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2140(%ebp)               # 4-byte Spill
	cmpl	$20, %eax
	jge	.LBB3_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-2136(%ebp), %eax               # 4-byte Reload
	movl	-2140(%ebp), %ecx               # 4-byte Reload
	movl	-1852(%ebp,%ecx,4), %edx
	movl	%edx, -2128(%ebp)
	movl	$0, -2124(%ebp)
	fildll	-2128(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	fstps	s_float@GOTOFF(%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-2140(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2132(%ebp)               # 4-byte Spill
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	xorl	%eax, %eax
	movl	%eax, -2144(%ebp)               # 4-byte Spill
	jmp	.LBB3_5
.LBB3_5:                                # %for.cond17
                                        # =>This Inner Loop Header: Depth=1
	movl	-2144(%ebp), %eax               # 4-byte Reload
	movl	%eax, -2148(%ebp)               # 4-byte Spill
	cmpl	$22, %eax
	jge	.LBB3_8
# %bb.6:                                # %for.body19
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-2136(%ebp), %eax               # 4-byte Reload
	movl	-2148(%ebp), %ecx               # 4-byte Reload
	movl	-1940(%ebp,%ecx,4), %edx
	movl	%edx, -2120(%ebp)
	movl	$0, -2116(%ebp)
	fildll	-2120(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	fstps	q_float@GOTOFF(%eax,%ecx,4)
# %bb.7:                                # %for.inc22
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-2148(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -2144(%ebp)               # 4-byte Spill
	jmp	.LBB3_5
.LBB3_8:                                # %for.end24
	movl	-2136(%ebp), %ebx               # 4-byte Reload
	leal	s_float@GOTOFF(%ebx), %ecx
	leal	q_float@GOTOFF(%ebx), %eax
	movl	$20, (%esp)
	movl	$22, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 12(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$2172, %esp                     # imm = 0x87C
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
	subl	$52, %esp
	.cfi_offset %ebx, -12
	calll	.L4$pb
.L4$pb:
	popl	%eax
.Ltmp2:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp2-.L4$pb), %eax
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)                 # 4-byte Spill
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB4_1
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %ecx                 # 4-byte Reload
	movl	-8(%ebp), %eax                  # 4-byte Reload
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.7@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %eax                 # 4-byte Reload
	movl	-32(%ebp), %edx                 # 4-byte Reload
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
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB4_1
.LBB4_6:                                # %for.end
	xorl	%eax, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB4_7
.LBB4_7:                                # %for.cond3
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_12
# %bb.8:                                # %for.body6
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_10
# %bb.9:                                # %if.then10
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.7@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_10:                               # %if.end12
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-28(%ebp), %ebx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-40(%ebp), %edx                 # 4-byte Reload
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
# %bb.11:                               # %for.inc16
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	jmp	.LBB4_7
.LBB4_12:                               # %for.end18
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end4:
	.size	print_array, .Lfunc_end4-print_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_bicg.1_fixp
	.type	kernel_bicg.1_fixp,@function
kernel_bicg.1_fixp:                     # @kernel_bicg.1_fixp
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
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-48(%ebp), %ecx                 # 4-byte Reload
	movl	$0, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-48(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	xorl	%eax, %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %for.cond1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_12
# %bb.6:                                # %for.body3
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-56(%ebp), %ecx                 # 4-byte Reload
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -60(%ebp)                 # 4-byte Spill
.LBB5_7:                                # %for.cond5
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_10
# %bb.8:                                # %for.body7
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	-36(%ebp), %edi                 # 4-byte Reload
	movl	-56(%ebp), %edx                 # 4-byte Reload
	movl	-64(%ebp), %esi                 # 4-byte Reload
	movl	-28(%ebp), %ecx                 # 4-byte Reload
	movl	-32(%ebp), %ebx                 # 4-byte Reload
	movl	(%ebx,%esi,4), %eax
	movl	%eax, -72(%ebp)                 # 4-byte Spill
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	(%eax,%edx,4), %eax
	imull	$80, %edx, %edx
	addl	%edx, %ecx
	movl	(%ecx,%esi,4), %ecx
	shrl	$1, %eax
	shrl	$1, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-72(%ebp), %eax                 # 4-byte Reload
	shrdl	$30, %edx, %ecx
	movl	-40(%ebp), %edx                 # 4-byte Reload
	shll	$1, %ecx
	shrl	$1, %eax
	shrl	$3, %ecx
	addl	%ecx, %eax
	movl	-56(%ebp), %ecx                 # 4-byte Reload
	shll	$1, %eax
	movl	%eax, (%ebx,%esi,4)
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	(%edi,%ecx,4), %edi
	movl	%edi, -68(%ebp)                 # 4-byte Spill
	imull	$80, %ecx, %edi
	addl	%edi, %eax
	movl	(%eax,%esi,4), %eax
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$2, %eax
	sarl	$2, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-68(%ebp), %edx                 # 4-byte Reload
	shrdl	$28, %edi, %esi
	shll	$1, %esi
	addl	%esi, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc20
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	-64(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	jmp	.LBB5_7
.LBB5_10:                               # %for.end22
                                        #   in Loop: Header=BB5_5 Depth=1
	jmp	.LBB5_11
.LBB5_11:                               # %for.inc23
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-56(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	jmp	.LBB5_5
.LBB5_12:                               # %for.end25
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	kernel_bicg.1_fixp, .Lfunc_end5-kernel_bicg.1_fixp
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
	subl	$156, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L6$pb
.L6$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L6$pb), %eax
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
	jmp	.LBB6_1
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-48(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-52(%ebp), %eax                 # 4-byte Reload
	cltd
	idivl	%ecx
	shll	$27, %edx
	shll	$27, %ecx
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
	jne	.LBB6_14
# %bb.13:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
.LBB6_14:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-36(%ebp), %edx                 # 4-byte Reload
	movl	-56(%ebp), %esi                 # 4-byte Reload
	shll	$5, %esi
	movl	%esi, (%edx,%ecx,4)
	movl	$0, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	xorl	%eax, %eax
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jmp	.LBB6_5
.LBB6_5:                                # %for.cond5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-84(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -88(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_12
# %bb.6:                                # %for.body8
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-48(%ebp), %ebx                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-88(%ebp), %eax                 # 4-byte Reload
	cltd
	idivl	%ecx
	shll	$27, %edx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -108(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -116(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -112(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-116(%ebp), %ebx                # 4-byte Reload
	movl	-112(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-108(%ebp), %eax                # 4-byte Reload
	movl	%edi, -104(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-104(%ebp), %eax                # 4-byte Reload
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
	movb	%al, -97(%ebp)                  # 1-byte Spill
	calll	__divdi3@PLT
	movb	-97(%ebp), %cl                  # 1-byte Reload
	movl	%eax, -96(%ebp)                 # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -92(%ebp)                 # 4-byte Spill
	jne	.LBB6_16
# %bb.15:                               # %for.body8
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-96(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -92(%ebp)                 # 4-byte Spill
.LBB6_16:                               # %for.body8
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	-88(%ebp), %ecx                 # 4-byte Reload
	movl	-32(%ebp), %edx                 # 4-byte Reload
	movl	-92(%ebp), %esi                 # 4-byte Reload
	shll	$5, %esi
	movl	%esi, (%edx,%ecx,4)
	movl	$0, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
.LBB6_7:                                # %for.cond15
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-120(%ebp), %eax                # 4-byte Reload
	movl	%eax, -124(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_10
# %bb.8:                                # %for.body18
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	-48(%ebp), %ebx                 # 4-byte Reload
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-88(%ebp), %eax                 # 4-byte Reload
	movl	-124(%ebp), %edx                # 4-byte Reload
	addl	$1, %edx
	imull	%edx, %eax
	cltd
	idivl	%ecx
	shll	$27, %edx
	shll	$27, %ecx
	shrl	$1, %edx
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
	jne	.LBB6_18
# %bb.17:                               # %for.body18
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	-132(%ebp), %eax                # 4-byte Reload
	movl	%eax, -128(%ebp)                # 4-byte Spill
.LBB6_18:                               # %for.body18
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	-124(%ebp), %ecx                # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-88(%ebp), %esi                 # 4-byte Reload
	movl	-128(%ebp), %edx                # 4-byte Reload
	shll	$5, %edx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc25
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	-124(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB6_7
.LBB6_10:                               # %for.end27
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_11
.LBB6_11:                               # %for.inc28
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-88(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -84(%ebp)                 # 4-byte Spill
	jmp	.LBB6_5
.LBB6_12:                               # %for.end30
	addl	$156, %esp
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
	.type	s_float,@object                 # @s_float
	.bss
	.globl	s_float
	.p2align	2
s_float:
	.zero	80
	.size	s_float, 80

	.type	q_float,@object                 # @q_float
	.globl	q_float
	.p2align	2
q_float:
	.zero	88
	.size	q_float, 88

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
	.addrsig_sym kernel_bicg.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym s_float
	.addrsig_sym q_float
	.addrsig_sym stderr

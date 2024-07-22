	.text
	.file	"mvt.c"
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
	subl	$1980, %esp                     # imm = 0x7BC
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L3$pb
.L3$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L3$pb), %ebx
	movl	%ebx, -1960(%ebp)               # 4-byte Spill
	leal	-1692(%ebp), %edi
	leal	-1772(%ebp), %esi
	leal	-1852(%ebp), %edx
	leal	-1932(%ebp), %ecx
	leal	-1612(%ebp), %eax
	movl	$20, (%esp)
	movl	%edi, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, 20(%esp)
	calll	init_array.2_fixp
	movl	-1960(%ebp), %ebx               # 4-byte Reload
	calll	timer_start
	movl	-1960(%ebp), %ebx               # 4-byte Reload
	leal	-1692(%ebp), %edi
	leal	-1772(%ebp), %esi
	leal	-1852(%ebp), %edx
	leal	-1932(%ebp), %ecx
	leal	-1612(%ebp), %eax
	movl	$20, (%esp)
	movl	%edi, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, 20(%esp)
	calll	kernel_mvt.1_fixp
	movl	-1960(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -1956(%ebp)               # 4-byte Spill
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-1956(%ebp), %eax               # 4-byte Reload
	movl	%eax, -1964(%ebp)               # 4-byte Spill
	cmpl	$20, %eax
	jge	.LBB3_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-1960(%ebp), %eax               # 4-byte Reload
	movl	-1964(%ebp), %ecx               # 4-byte Reload
	movl	-1692(%ebp,%ecx,4), %edx
	movl	%edx, -1952(%ebp)
	movl	$0, -1948(%ebp)
	fildll	-1952(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivr	%st, %st(1)
	fxch	%st(1)
	fstps	x1_float@GOTOFF(%eax,%ecx,4)
	movl	-1772(%ebp,%ecx,4), %edx
	movl	%edx, -1944(%ebp)
	movl	$0, -1940(%ebp)
	fildll	-1944(%ebp)
	fdivp	%st, %st(1)
	fstps	x2_float@GOTOFF(%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-1964(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -1956(%ebp)               # 4-byte Spill
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movl	-1960(%ebp), %ebx               # 4-byte Reload
	leal	x1_float@GOTOFF(%ebx), %ecx
	leal	x2_float@GOTOFF(%ebx), %eax
	movl	$20, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	calll	print_array
	xorl	%eax, %eax
	addl	$1980, %esp                     # imm = 0x7BC
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
	movl	%eax, -28(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-24(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.5@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-24(%ebp), %ebx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	-28(%ebp), %edx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	flds	(%eax,%edx,4)
	leal	.L.str.6@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.6@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	fprintf@PLT
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-28(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB4_1
.LBB4_6:                                # %for.end
	xorl	%eax, %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
	jmp	.LBB4_7
.LBB4_7:                                # %for.cond3
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %ecx                 # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -36(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_12
# %bb.8:                                # %for.body6
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_10
# %bb.9:                                # %if.then10
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-24(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.5@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_10:                               # %if.end12
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-24(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %eax                 # 4-byte Reload
	movl	-36(%ebp), %edx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %ecx
	movl	(%ecx), %ecx
	flds	(%eax,%edx,4)
	leal	.L.str.6@GOTOFF(%ebx), %eax
	movl	%esp, %eax
	fstpl	8(%eax)
	leal	.L.str.6@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%ecx, (%eax)
	calll	fprintf@PLT
# %bb.11:                               # %for.inc16
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -32(%ebp)                 # 4-byte Spill
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
	.p2align	4, 0x90                         # -- Begin function kernel_mvt.1_fixp
	.type	kernel_mvt.1_fixp,@function
kernel_mvt.1_fixp:                      # @kernel_mvt.1_fixp
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
	jmp	.LBB5_1
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-12(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -40(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %for.cond1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-20(%ebp), %edi                 # 4-byte Reload
	movl	-40(%ebp), %ecx                 # 4-byte Reload
	movl	-28(%ebp), %edx                 # 4-byte Reload
	movl	-48(%ebp), %esi                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	(%edi,%ecx,4), %edi
	movl	%edi, -52(%ebp)                 # 4-byte Spill
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
	movl	-20(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-52(%ebp), %edx                 # 4-byte Reload
	shrdl	$28, %edi, %esi
	shll	$1, %esi
	addl	%esi, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-48(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc8
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-40(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -12(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_8:                                # %for.end10
	xorl	%eax, %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jmp	.LBB5_9
.LBB5_9:                                # %for.cond11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -60(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_16
# %bb.10:                               # %for.body13
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	jmp	.LBB5_11
.LBB5_11:                               # %for.cond14
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%ebp), %ecx                 # 4-byte Reload
	movl	-64(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -68(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_14
# %bb.12:                               # %for.body16
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-24(%ebp), %edi                 # 4-byte Reload
	movl	-60(%ebp), %ecx                 # 4-byte Reload
	movl	-32(%ebp), %edx                 # 4-byte Reload
	movl	-68(%ebp), %esi                 # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	(%edi,%ecx,4), %edi
	movl	%edi, -72(%ebp)                 # 4-byte Spill
	imull	$80, %esi, %edi
	addl	%edi, %eax
	movl	(%eax,%ecx,4), %eax
	movl	(%edx,%esi,4), %edx
	shrl	$1, %eax
	shrl	$1, %edx
	sarl	$2, %eax
	sarl	$2, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-72(%ebp), %edx                 # 4-byte Reload
	shrdl	$28, %edi, %esi
	shll	$1, %esi
	addl	%esi, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.13:                               # %for.inc24
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-68(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	jmp	.LBB5_11
.LBB5_14:                               # %for.end26
                                        #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_15
.LBB5_15:                               # %for.inc27
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-60(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jmp	.LBB5_9
.LBB5_16:                               # %for.end29
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	kernel_mvt.1_fixp, .Lfunc_end5-kernel_mvt.1_fixp
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
	subl	$204, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L6$pb
.L6$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L6$pb), %eax
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
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	cltd
	idivl	%ecx
	shll	$27, %edx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -68(%ebp)                 # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -76(%ebp)                 # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
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
	movl	-44(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB6_10
# %bb.9:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-56(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
.LBB6_10:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-24(%ebp), %edx                 # 4-byte Reload
	movl	-52(%ebp), %esi                 # 4-byte Reload
	shll	$5, %esi
	shrl	$2, %esi
	movl	%esi, (%edx,%eax,4)
	addl	$1, %eax
	cltd
	idivl	%ecx
	shll	$27, %edx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -96(%ebp)                 # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -104(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
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
	movl	-44(%ebp), %ebx                 # 4-byte Reload
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
# %bb.11:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-84(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -80(%ebp)                 # 4-byte Spill
.LBB6_12:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-28(%ebp), %edx                 # 4-byte Reload
	movl	-80(%ebp), %esi                 # 4-byte Reload
	shll	$5, %esi
	shrl	$2, %esi
	movl	%esi, (%edx,%eax,4)
	addl	$3, %eax
	cltd
	idivl	%ecx
	shll	$27, %edx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -124(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -132(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -128(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-132(%ebp), %ebx                # 4-byte Reload
	movl	-128(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-124(%ebp), %eax                # 4-byte Reload
	movl	%edi, -120(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-120(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -113(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-113(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -112(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -108(%ebp)                # 4-byte Spill
	jne	.LBB6_14
# %bb.13:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-112(%ebp), %eax                # 4-byte Reload
	movl	%eax, -108(%ebp)                # 4-byte Spill
.LBB6_14:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	-32(%ebp), %edx                 # 4-byte Reload
	movl	-108(%ebp), %esi                # 4-byte Reload
	shll	$5, %esi
	movl	%esi, (%edx,%eax,4)
	addl	$4, %eax
	cltd
	idivl	%ecx
	shll	$27, %edx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -152(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -160(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
	movl	%ecx, -156(%ebp)                # 4-byte Spill
	movl	%ecx, 4(%eax)
	calll	__moddi3@PLT
	movl	-160(%ebp), %ebx                # 4-byte Reload
	movl	-156(%ebp), %ecx                # 4-byte Reload
	movl	%eax, %edi
	movl	-152(%ebp), %eax                # 4-byte Reload
	movl	%edi, -148(%ebp)                # 4-byte Spill
	movl	%esp, %edi
	movl	%esi, 12(%edi)
	movl	%eax, 8(%edi)
	movl	-148(%ebp), %eax                # 4-byte Reload
	movl	%ebx, (%edi)
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	%ecx, 4(%edi)
	testl	%ecx, %ecx
	sets	%cl
	testl	%esi, %esi
	sets	%ch
	xorb	%ch, %cl
	orl	%edx, %eax
	setne	%al
	andb	%cl, %al
	movb	%al, -141(%ebp)                 # 1-byte Spill
	calll	__divdi3@PLT
	movb	-141(%ebp), %cl                 # 1-byte Reload
	movl	%eax, -140(%ebp)                # 4-byte Spill
	decl	%eax
	testb	%cl, %cl
	movl	%eax, -136(%ebp)                # 4-byte Spill
	jne	.LBB6_16
# %bb.15:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-140(%ebp), %eax                # 4-byte Reload
	movl	%eax, -136(%ebp)                # 4-byte Spill
.LBB6_16:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-48(%ebp), %ecx                 # 4-byte Reload
	movl	-136(%ebp), %edx                # 4-byte Reload
	shll	$5, %edx
	movl	%edx, (%eax,%ecx,4)
	xorl	%eax, %eax
	movl	%eax, -164(%ebp)                # 4-byte Spill
.LBB6_3:                                # %for.cond21
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-164(%ebp), %eax                # 4-byte Reload
	movl	%eax, -168(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_6
# %bb.4:                                # %for.body24
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-44(%ebp), %ebx                 # 4-byte Reload
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-168(%ebp), %edx                # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	imull	%edx, %eax
	cltd
	idivl	%ecx
	shll	$27, %edx
	shll	$27, %ecx
	shrl	$1, %edx
	shrl	$1, %ecx
	movl	%ecx, -188(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$26, %ecx
	movl	%ecx, -196(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$26, %edx, %ecx
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
	movl	-44(%ebp), %ebx                 # 4-byte Reload
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
	jne	.LBB6_18
# %bb.17:                               # %for.body24
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-176(%ebp), %eax                # 4-byte Reload
	movl	%eax, -172(%ebp)                # 4-byte Spill
.LBB6_18:                               # %for.body24
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-168(%ebp), %ecx                # 4-byte Reload
	movl	-40(%ebp), %eax                 # 4-byte Reload
	movl	-48(%ebp), %esi                 # 4-byte Reload
	movl	-172(%ebp), %edx                # 4-byte Reload
	shll	$5, %edx
	imull	$80, %esi, %esi
	addl	%esi, %eax
	movl	%edx, (%eax,%ecx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-168(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -164(%ebp)                # 4-byte Spill
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc31
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-48(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB6_1
.LBB6_8:                                # %for.end33
	addl	$204, %esp
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
	.type	x1_float,@object                # @x1_float
	.bss
	.globl	x1_float
	.p2align	2
x1_float:
	.zero	80
	.size	x1_float, 80

	.type	x2_float,@object                # @x2_float
	.globl	x2_float
	.p2align	2
x2_float:
	.zero	80
	.size	x2_float, 80

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"\n"
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%0.16f "
	.size	.L.str.6, 8

	.ident	"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym timer_start
	.addrsig_sym timer_stop
	.addrsig_sym print_array
	.addrsig_sym fprintf
	.addrsig_sym kernel_mvt.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym x1_float
	.addrsig_sym x2_float
	.addrsig_sym stderr

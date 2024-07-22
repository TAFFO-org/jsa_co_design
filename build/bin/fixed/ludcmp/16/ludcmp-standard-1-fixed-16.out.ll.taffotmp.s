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
	calll	.L3$pb
.L3$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L3$pb), %ebx
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
	calll	init_array.2_fixp
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
	calll	kernel_ludcmp.1_fixp
	movl	-3464(%ebp), %ebx               # 4-byte Reload
	calll	timer_stop
	xorl	%eax, %eax
	movl	%eax, -3460(%ebp)               # 4-byte Spill
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-3460(%ebp), %eax               # 4-byte Reload
	movl	%eax, -3468(%ebp)               # 4-byte Spill
	cmpl	$20, %eax
	jge	.LBB3_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-3464(%ebp), %eax               # 4-byte Reload
	movl	-3468(%ebp), %ecx               # 4-byte Reload
	movl	-3372(%ebp,%ecx,4), %edx
	movl	%edx, -3456(%ebp)
	fildl	-3456(%ebp)
	flds	.LCPI3_0@GOTOFF(%eax)
	fdivrp	%st, %st(1)
	fstps	x_float@GOTOFF(%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-3468(%ebp), %eax               # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -3460(%ebp)               # 4-byte Spill
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
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
	subl	$36, %esp
	.cfi_offset %ebx, -12
	calll	.L4$pb
.L4$pb:
	popl	%eax
.Ltmp2:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp2-.L4$pb), %eax
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
	movl	%eax, -24(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB4_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-20(%ebp), %ebx                 # 4-byte Reload
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	leal	.L.str.9@GOTOFF(%ebx), %eax
	movl	stderr@GOT(%ebx), %edx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	fprintf@PLT
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
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
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-24(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	jmp	.LBB4_1
.LBB4_6:                                # %for.end
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end4:
	.size	print_array, .Lfunc_end4-print_array
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function kernel_ludcmp.1_fixp
	.type	kernel_ludcmp.1_fixp,@function
kernel_ludcmp.1_fixp:                   # @kernel_ludcmp.1_fixp
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
	calll	.L5$pb
.L5$pb:
	popl	%eax
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L5$pb), %eax
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
                                        #     Child Loop BB5_11 Depth 2
                                        #       Child Loop BB5_13 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -44(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_20
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %for.cond2
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_5 Depth 3
	movl	-44(%ebp), %ecx                 # 4-byte Reload
	movl	-48(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_10
# %bb.4:                                # %for.body4
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-44(%ebp), %edx                 # 4-byte Reload
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %eax
	shrl	$6, %eax
	xorl	%ecx, %ecx
	movl	%ecx, -60(%ebp)                 # 4-byte Spill
	movl	%eax, -56(%ebp)                 # 4-byte Spill
.LBB5_5:                                # %for.cond6
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	-56(%ebp), %edx                 # 4-byte Reload
	movl	%edx, -68(%ebp)                 # 4-byte Spill
	movl	%eax, -64(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_8
# %bb.6:                                # %for.body8
                                        #   in Loop: Header=BB5_5 Depth=3
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
	sarl	$3, %eax
	sarl	$3, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-68(%ebp), %eax                 # 4-byte Reload
	shrdl	$24, %edx, %ecx
	shll	$1, %ecx
	shrl	$3, %ecx
	subl	%ecx, %eax
	movl	%eax, -72(%ebp)                 # 4-byte Spill
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=3
	movl	-72(%ebp), %eax                 # 4-byte Reload
	movl	-64(%ebp), %ecx                 # 4-byte Reload
	addl	$1, %ecx
	movl	%ecx, -60(%ebp)                 # 4-byte Spill
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	jmp	.LBB5_5
.LBB5_8:                                # %for.end
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-40(%ebp), %ebx                 # 4-byte Reload
	movl	-68(%ebp), %edx                 # 4-byte Reload
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	imull	$80, %ecx, %esi
	addl	%esi, %eax
	movl	(%eax,%ecx,4), %ecx
	shrl	$1, %ecx
	sarl	$2, %edx
	sarl	$7, %ecx
	movl	%ecx, -92(%ebp)                 # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$20, %ecx
	movl	%ecx, -100(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$20, %edx, %ecx
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
	jne	.LBB5_38
# %bb.37:                               # %for.end
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-80(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -76(%ebp)                 # 4-byte Spill
.LBB5_38:                               # %for.end
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-44(%ebp), %esi                 # 4-byte Reload
	movl	-76(%ebp), %edx                 # 4-byte Reload
	imull	$80, %esi, %esi
	addl	%esi, %eax
	shll	$8, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc17
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -48(%ebp)                 # 4-byte Spill
	jmp	.LBB5_3
.LBB5_10:                               # %for.end19
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -104(%ebp)                # 4-byte Spill
	jmp	.LBB5_11
.LBB5_11:                               # %for.cond20
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_13 Depth 3
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-104(%ebp), %eax                # 4-byte Reload
	movl	%eax, -108(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_18
# %bb.12:                               # %for.body22
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-108(%ebp), %ecx                # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-44(%ebp), %edx                 # 4-byte Reload
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %eax
	shrl	$6, %eax
	xorl	%ecx, %ecx
	movl	%ecx, -116(%ebp)                # 4-byte Spill
	movl	%eax, -112(%ebp)                # 4-byte Spill
.LBB5_13:                               # %for.cond25
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%ebp), %ecx                 # 4-byte Reload
	movl	-116(%ebp), %eax                # 4-byte Reload
	movl	-112(%ebp), %edx                # 4-byte Reload
	movl	%edx, -124(%ebp)                # 4-byte Spill
	movl	%eax, -120(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_16
# %bb.14:                               # %for.body27
                                        #   in Loop: Header=BB5_13 Depth=3
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
	sarl	$3, %eax
	sarl	$3, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-124(%ebp), %eax                # 4-byte Reload
	shrdl	$24, %edx, %ecx
	shll	$1, %ecx
	shrl	$3, %ecx
	subl	%ecx, %eax
	movl	%eax, -128(%ebp)                # 4-byte Spill
# %bb.15:                               # %for.inc34
                                        #   in Loop: Header=BB5_13 Depth=3
	movl	-128(%ebp), %eax                # 4-byte Reload
	movl	-120(%ebp), %ecx                # 4-byte Reload
	addl	$1, %ecx
	movl	%ecx, -116(%ebp)                # 4-byte Spill
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB5_13
.LBB5_16:                               # %for.end36
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-108(%ebp), %ecx                # 4-byte Reload
	movl	-124(%ebp), %edx                # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-44(%ebp), %esi                 # 4-byte Reload
	imull	$80, %esi, %esi
	addl	%esi, %eax
	shll	$6, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.17:                               # %for.inc39
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-108(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -104(%ebp)                # 4-byte Spill
	jmp	.LBB5_11
.LBB5_18:                               # %for.end41
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_19
.LBB5_19:                               # %for.inc42
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB5_1
.LBB5_20:                               # %for.end44
	xorl	%eax, %eax
	movl	%eax, -132(%ebp)                # 4-byte Spill
	jmp	.LBB5_21
.LBB5_21:                               # %for.cond45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_23 Depth 2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-132(%ebp), %eax                # 4-byte Reload
	movl	%eax, -136(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_28
# %bb.22:                               # %for.body47
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-136(%ebp), %ecx                # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	shrl	$6, %eax
	xorl	%ecx, %ecx
	movl	%ecx, -144(%ebp)                # 4-byte Spill
	movl	%eax, -140(%ebp)                # 4-byte Spill
.LBB5_23:                               # %for.cond49
                                        #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-136(%ebp), %ecx                # 4-byte Reload
	movl	-144(%ebp), %eax                # 4-byte Reload
	movl	-140(%ebp), %edx                # 4-byte Reload
	movl	%edx, -152(%ebp)                # 4-byte Spill
	movl	%eax, -148(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_26
# %bb.24:                               # %for.body51
                                        #   in Loop: Header=BB5_23 Depth=2
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
	sarl	$2, %eax
	sarl	$3, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-152(%ebp), %eax                # 4-byte Reload
	shrdl	$25, %edx, %ecx
	shll	$1, %ecx
	shrl	$3, %ecx
	subl	%ecx, %eax
	movl	%eax, -156(%ebp)                # 4-byte Spill
# %bb.25:                               # %for.inc57
                                        #   in Loop: Header=BB5_23 Depth=2
	movl	-156(%ebp), %eax                # 4-byte Reload
	movl	-148(%ebp), %ecx                # 4-byte Reload
	addl	$1, %ecx
	movl	%ecx, -144(%ebp)                # 4-byte Spill
	movl	%eax, -140(%ebp)                # 4-byte Spill
	jmp	.LBB5_23
.LBB5_26:                               # %for.end59
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-136(%ebp), %ecx                # 4-byte Reload
	movl	-152(%ebp), %edx                # 4-byte Reload
	shll	$6, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.27:                               # %for.inc61
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-136(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -132(%ebp)                # 4-byte Spill
	jmp	.LBB5_21
.LBB5_28:                               # %for.end63
	movl	-20(%ebp), %eax                 # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -160(%ebp)                # 4-byte Spill
.LBB5_29:                               # %for.cond65
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_31 Depth 2
	movl	-160(%ebp), %eax                # 4-byte Reload
	movl	%eax, -164(%ebp)                # 4-byte Spill
	cmpl	$0, %eax
	jl	.LBB5_36
# %bb.30:                               # %for.body67
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-164(%ebp), %ecx                # 4-byte Reload
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	(%eax,%ecx,4), %eax
	addl	$1, %ecx
	shrl	$6, %eax
	movl	%ecx, -172(%ebp)                # 4-byte Spill
	movl	%eax, -168(%ebp)                # 4-byte Spill
.LBB5_31:                               # %for.cond69
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%ebp), %ecx                 # 4-byte Reload
	movl	-172(%ebp), %eax                # 4-byte Reload
	movl	-168(%ebp), %edx                # 4-byte Reload
	movl	%edx, -180(%ebp)                # 4-byte Spill
	movl	%eax, -176(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB5_34
# %bb.32:                               # %for.body71
                                        #   in Loop: Header=BB5_31 Depth=2
	movl	-32(%ebp), %ecx                 # 4-byte Reload
	movl	-176(%ebp), %edx                # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	movl	-164(%ebp), %esi                # 4-byte Reload
	imull	$80, %esi, %esi
	addl	%esi, %eax
	movl	(%eax,%edx,4), %eax
	movl	(%ecx,%edx,4), %ecx
	shrl	$1, %eax
	sarl	$4, %eax
	sarl	$5, %ecx
	imull	%ecx
	movl	%eax, %ecx
	movl	-180(%ebp), %eax                # 4-byte Reload
	shrdl	$23, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, -184(%ebp)                # 4-byte Spill
# %bb.33:                               # %for.inc77
                                        #   in Loop: Header=BB5_31 Depth=2
	movl	-184(%ebp), %eax                # 4-byte Reload
	movl	-176(%ebp), %ecx                # 4-byte Reload
	addl	$1, %ecx
	movl	%ecx, -172(%ebp)                # 4-byte Spill
	movl	%eax, -168(%ebp)                # 4-byte Spill
	jmp	.LBB5_31
.LBB5_34:                               # %for.end79
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-40(%ebp), %ebx                 # 4-byte Reload
	movl	-180(%ebp), %edx                # 4-byte Reload
	movl	-164(%ebp), %ecx                # 4-byte Reload
	movl	-24(%ebp), %eax                 # 4-byte Reload
	imull	$80, %ecx, %esi
	addl	%esi, %eax
	movl	(%eax,%ecx,4), %ecx
	shrl	$1, %ecx
	sarl	$3, %edx
	sarl	$7, %ecx
	movl	%ecx, -204(%ebp)                # 4-byte Spill
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%esp, %eax
	movl	%esi, 12(%eax)
	movl	%ecx, 8(%eax)
	movl	%edx, %ecx
	shll	$20, %ecx
	movl	%ecx, -212(%ebp)                # 4-byte Spill
	movl	%ecx, (%eax)
	movl	%edx, %ecx
	sarl	$31, %ecx
	shldl	$20, %edx, %ecx
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
	jne	.LBB5_40
# %bb.39:                               # %for.end79
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-192(%ebp), %eax                # 4-byte Reload
	movl	%eax, -188(%ebp)                # 4-byte Spill
.LBB5_40:                               # %for.end79
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-164(%ebp), %ecx                # 4-byte Reload
	movl	-188(%ebp), %edx                # 4-byte Reload
	shll	$8, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.35:                               # %for.inc84
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-164(%ebp), %eax                # 4-byte Reload
	addl	$-1, %eax
	movl	%eax, -160(%ebp)                # 4-byte Spill
	jmp	.LBB5_29
.LBB5_36:                               # %for.end85
	addl	$220, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end5:
	.size	kernel_ludcmp.1_fixp, .Lfunc_end5-kernel_ludcmp.1_fixp
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
	subl	$220, %esp
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	calll	.L6$pb
.L6$pb:
	popl	%eax
.Ltmp4:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp4-.L6$pb), %eax
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
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-16(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
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
	jne	.LBB6_46
# %bb.45:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-60(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -56(%ebp)                 # 4-byte Spill
.LBB6_46:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
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
	jne	.LBB6_48
# %bb.47:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-88(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -84(%ebp)                 # 4-byte Spill
.LBB6_48:                               # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%ebp), %eax                 # 4-byte Reload
	movl	-52(%ebp), %ecx                 # 4-byte Reload
	movl	-84(%ebp), %edx                 # 4-byte Reload
	shll	$1, %edx
	addl	$-2147483648, %edx              # imm = 0x80000000
	movl	%edx, (%eax,%ecx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-52(%ebp), %eax                 # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -16(%ebp)                 # 4-byte Spill
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	xorl	%eax, %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB6_5
.LBB6_5:                                # %for.cond12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #     Child Loop BB6_11 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-112(%ebp), %eax                # 4-byte Reload
	movl	%eax, -116(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_16
# %bb.6:                                # %for.body15
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB6_7
.LBB6_7:                                # %for.cond16
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-116(%ebp), %ecx                # 4-byte Reload
	movl	-120(%ebp), %eax                # 4-byte Reload
	movl	%eax, -124(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jg	.LBB6_10
# %bb.8:                                # %for.body19
                                        #   in Loop: Header=BB6_7 Depth=2
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
	jne	.LBB6_50
# %bb.49:                               # %for.body19
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	-132(%ebp), %eax                # 4-byte Reload
	movl	%eax, -128(%ebp)                # 4-byte Spill
.LBB6_50:                               # %for.body19
                                        #   in Loop: Header=BB6_7 Depth=2
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
	sarl	$2, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.9:                                # %for.inc26
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	-124(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -120(%ebp)                # 4-byte Spill
	jmp	.LBB6_7
.LBB6_10:                               # %for.end28
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-116(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -156(%ebp)                # 4-byte Spill
.LBB6_11:                               # %for.cond30
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-156(%ebp), %eax                # 4-byte Reload
	movl	%eax, -160(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_14
# %bb.12:                               # %for.body33
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-160(%ebp), %ecx                # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	movl	-116(%ebp), %edx                # 4-byte Reload
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
# %bb.13:                               # %for.inc36
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-160(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -156(%ebp)                # 4-byte Spill
	jmp	.LBB6_11
.LBB6_14:                               # %for.end38
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-116(%ebp), %ecx                # 4-byte Reload
	movl	-28(%ebp), %eax                 # 4-byte Reload
	imull	$80, %ecx, %edx
	addl	%edx, %eax
	movl	$268435456, (%eax,%ecx,4)       # imm = 0x10000000
# %bb.15:                               # %for.inc41
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-116(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -112(%ebp)                # 4-byte Spill
	jmp	.LBB6_5
.LBB6_16:                               # %for.end43
	xorl	%eax, %eax
	movl	%eax, -164(%ebp)                # 4-byte Spill
	jmp	.LBB6_17
.LBB6_17:                               # %for.cond44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_19 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-164(%ebp), %eax                # 4-byte Reload
	movl	%eax, -168(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_24
# %bb.18:                               # %for.body47
                                        #   in Loop: Header=BB6_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, -172(%ebp)                # 4-byte Spill
	jmp	.LBB6_19
.LBB6_19:                               # %for.cond48
                                        #   Parent Loop BB6_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-172(%ebp), %eax                # 4-byte Reload
	movl	%eax, -176(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_22
# %bb.20:                               # %for.body51
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-176(%ebp), %ecx                # 4-byte Reload
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	-168(%ebp), %edx                # 4-byte Reload
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	$0, (%eax,%ecx,4)
# %bb.21:                               # %for.inc54
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-176(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -172(%ebp)                # 4-byte Spill
	jmp	.LBB6_19
.LBB6_22:                               # %for.end56
                                        #   in Loop: Header=BB6_17 Depth=1
	jmp	.LBB6_23
.LBB6_23:                               # %for.inc57
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-168(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -164(%ebp)                # 4-byte Spill
	jmp	.LBB6_17
.LBB6_24:                               # %for.end59
	xorl	%eax, %eax
	movl	%eax, -180(%ebp)                # 4-byte Spill
	jmp	.LBB6_25
.LBB6_25:                               # %for.cond60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_27 Depth 2
                                        #       Child Loop BB6_29 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-180(%ebp), %eax                # 4-byte Reload
	movl	%eax, -184(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_36
# %bb.26:                               # %for.body63
                                        #   in Loop: Header=BB6_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -188(%ebp)                # 4-byte Spill
	jmp	.LBB6_27
.LBB6_27:                               # %for.cond64
                                        #   Parent Loop BB6_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_29 Depth 3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-188(%ebp), %eax                # 4-byte Reload
	movl	%eax, -192(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_34
# %bb.28:                               # %for.body67
                                        #   in Loop: Header=BB6_27 Depth=2
	xorl	%eax, %eax
	movl	%eax, -196(%ebp)                # 4-byte Spill
	jmp	.LBB6_29
.LBB6_29:                               # %for.cond68
                                        #   Parent Loop BB6_25 Depth=1
                                        #     Parent Loop BB6_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-196(%ebp), %eax                # 4-byte Reload
	movl	%eax, -200(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_32
# %bb.30:                               # %for.body71
                                        #   in Loop: Header=BB6_29 Depth=3
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
	sarl	$3, %eax
	sarl	$3, %edx
	imull	%edx
	movl	%eax, %esi
	movl	-32(%ebp), %eax                 # 4-byte Reload
	movl	%edx, %edi
	movl	-192(%ebp), %edx                # 4-byte Reload
	shrdl	$24, %edi, %esi
	shll	$1, %esi
	imull	$80, %edx, %edx
	addl	%edx, %eax
	movl	(%eax,%ecx,4), %edx
	shrl	$3, %edx
	addl	%esi, %edx
	shll	$3, %edx
	movl	%edx, (%eax,%ecx,4)
# %bb.31:                               # %for.inc79
                                        #   in Loop: Header=BB6_29 Depth=3
	movl	-200(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -196(%ebp)                # 4-byte Spill
	jmp	.LBB6_29
.LBB6_32:                               # %for.end81
                                        #   in Loop: Header=BB6_27 Depth=2
	jmp	.LBB6_33
.LBB6_33:                               # %for.inc82
                                        #   in Loop: Header=BB6_27 Depth=2
	movl	-192(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -188(%ebp)                # 4-byte Spill
	jmp	.LBB6_27
.LBB6_34:                               # %for.end84
                                        #   in Loop: Header=BB6_25 Depth=1
	jmp	.LBB6_35
.LBB6_35:                               # %for.inc85
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-184(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -180(%ebp)                # 4-byte Spill
	jmp	.LBB6_25
.LBB6_36:                               # %for.end87
	xorl	%eax, %eax
	movl	%eax, -204(%ebp)                # 4-byte Spill
	jmp	.LBB6_37
.LBB6_37:                               # %for.cond88
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_39 Depth 2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-204(%ebp), %eax                # 4-byte Reload
	movl	%eax, -208(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_44
# %bb.38:                               # %for.body91
                                        #   in Loop: Header=BB6_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, -212(%ebp)                # 4-byte Spill
	jmp	.LBB6_39
.LBB6_39:                               # %for.cond92
                                        #   Parent Loop BB6_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%ebp), %ecx                 # 4-byte Reload
	movl	-212(%ebp), %eax                # 4-byte Reload
	movl	%eax, -216(%ebp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB6_42
# %bb.40:                               # %for.body95
                                        #   in Loop: Header=BB6_39 Depth=2
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
                                        #   in Loop: Header=BB6_39 Depth=2
	movl	-216(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -212(%ebp)                # 4-byte Spill
	jmp	.LBB6_39
.LBB6_42:                               # %for.end102
                                        #   in Loop: Header=BB6_37 Depth=1
	jmp	.LBB6_43
.LBB6_43:                               # %for.inc103
                                        #   in Loop: Header=BB6_37 Depth=1
	movl	-208(%ebp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -204(%ebp)                # 4-byte Spill
	jmp	.LBB6_37
.LBB6_44:                               # %for.end105
	addl	$220, %esp
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
	.addrsig_sym kernel_ludcmp.1_fixp
	.addrsig_sym init_array.2_fixp
	.addrsig_sym x_float
	.addrsig_sym stderr

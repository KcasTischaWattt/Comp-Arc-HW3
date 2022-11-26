	.file	"countRoot.c"
	.intel_syntax noprefix
	.text
	.globl	pow
	.type	pow, @function
pow:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR -24[rbp], xmm0 # double x
	movsd	QWORD PTR -32[rbp], xmm1 # double y
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -8[rbp], xmm0 # double temp
	mov	DWORD PTR -12[rbp], 1 # int i в for(в функции pow)
	jmp	.L2
.L3:
	movsd	xmm0, QWORD PTR -8[rbp]
	mulsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	add	DWORD PTR -12[rbp], 1
.L2:
	cvtsi2sd	xmm1, DWORD PTR -12[rbp]
	movsd	xmm0, QWORD PTR -32[rbp]
	comisd	xmm0, xmm1
	ja	.L3
	movsd	xmm0, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	pow, .-pow
	.globl	countRoot
	.type	countRoot, @function
countRoot:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 40
	movsd	QWORD PTR -40[rbp], xmm0 # double x
	movsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0 # double res
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -16[rbp], xmm0 # double alpha
	mov	QWORD PTR -8[rbp], 1 # long long factorial
	mov	DWORD PTR -28[rbp], 2 # int i в for(в функции countRoot)
	jmp	.L6
.L7:
	cvtsi2sd	xmm1, DWORD PTR -28[rbp]
	movsd	xmm0, QWORD PTR .LC0[rip]
	subsd	xmm0, xmm1
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	mov	rdx, QWORD PTR -8[rbp]
	imul	rax, rdx
	mov	QWORD PTR -8[rbp], rax
	cvtsi2sd	xmm0, DWORD PTR -28[rbp]
	mov	rax, QWORD PTR -40[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	pow
	mulsd	xmm0, QWORD PTR -16[rbp]
	cvtsi2sd	xmm1, QWORD PTR -8[rbp]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -24[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	add	DWORD PTR -28[rbp], 1
.L6:
	cmp	DWORD PTR -28[rbp], 14
	jle	.L7
	movsd	xmm0, QWORD PTR -24[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	countRoot, .-countRoot
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1071644672
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
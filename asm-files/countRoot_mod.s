	.file	"countRoot.c"
	.intel_syntax noprefix
	.text
	.globl	pow
	.type	pow, @function
pow:
	endbr64
	push	rbp
	mov	rbp, rsp
	movsd	QWORD PTR -24[rbp], xmm0 # Первый параметр - double x
	movsd	QWORD PTR -32[rbp], xmm1 # Второй параметр - double y
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	mov	r12d, 1
	jmp	.L2
.L3:
	movsd	xmm0, QWORD PTR -8[rbp]
	mulsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	add	r12d, 1
.L2:
	cvtsi2sd	xmm1, r12d
	movsd	xmm0, QWORD PTR -32[rbp]
	comisd	xmm0, xmm1
	ja	.L3
	movsd	xmm0, QWORD PTR -8[rbp] # return x
	pop	rbp
	ret
	.size	pow, .-pow
	.globl	countRoot
	.type	countRoot, @function
countRoot:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 40
	movsd	QWORD PTR -40[rbp], xmm0 # Первый параметр - double x
	movsd	xmm1, QWORD PTR -40[rbp]
	movsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	mov	QWORD PTR -24[rbp], 1
	mov	r12d, 2
	jmp	.L6
.L7:
	cvtsi2sd	xmm1, r12d
	movsd	xmm0, QWORD PTR .LC0[rip]
	subsd	xmm0, xmm1
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	addsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	eax, r12d
	mov	rdx, QWORD PTR -24[rbp]
	imul	rax, rdx
	mov	QWORD PTR -24[rbp], rax
	cvtsi2sd	xmm0, r12d
	mov	rax, QWORD PTR -40[rbp]
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	pow
	mulsd	xmm0, QWORD PTR -16[rbp]
	cvtsi2sd	xmm1, QWORD PTR -24[rbp]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR -8[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	add	r12d, 1
.L6:
	cmp	r12d, 14
	jle	.L7
	movsd	xmm0, QWORD PTR -8[rbp] # return res
	leave
	ret
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

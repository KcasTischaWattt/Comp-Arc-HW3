	.file	"Main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC1:
	.string	"Input your number(-1 < x < 1):"
.LC2:
	.string	"%lf"
.LC5:
	.string	"Result: %.30f"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -16[rbp], xmm0
.L2:
	lea	rdi, .LC1[rip]
	call	puts@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	xmm1, QWORD PTR .LC3[rip]
	comisd	xmm0, xmm1
	jnb	.L2
	movsd	xmm1, QWORD PTR -16[rbp]
	movsd	xmm0, QWORD PTR .LC4[rip]
	comisd	xmm0, xmm1
	jnb	.L2
	mov	rax, QWORD PTR -16[rbp] # Передача x в функцию
	movq	xmm0, rax
	call	countRoot@PLT
	movq   QWORD PTR -8[rbp], xmm0
	lea	rdi, .LC5[rip]
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1073741824
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	-1074790400
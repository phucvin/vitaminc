.data
.balign 1
__builtin_print_format:
	.ascii "%d\012\000"
/* end data */

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rsp, %rdx
	movl $0, (%rdx)
	subq $16, %rsp
	movq %rsp, %rsi
	movl $0, (%rsi)
	movl $0, %ecx
	movl $0, %eax
.Lbb3:
	cmpl $5, %ecx
	jge .Lbb6
	addl $1, %eax
	movl %eax, (%rdx)
	addl $1, %ecx
	movl %ecx, (%rsi)
	jmp .Lbb3
.Lbb6:
	subq $16, %rsp
	movq %rsp, %rsi
	movl $0, (%rsi)
	subq $16, %rsp
	movq %rsp, %rcx
	movl $5, (%rcx)
	movl $0, %ecx
.Lbb8:
	cmpl $5, %ecx
	jge .Lbb11
	addl $1, %eax
	movl %eax, (%rdx)
	addl $1, %ecx
	movl %ecx, (%rsi)
	jmp .Lbb8
.Lbb11:
	movl $0, %eax
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

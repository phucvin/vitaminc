.data
.balign 1
__builtin_print_format:
	.ascii "%d\012\000"
/* end data */

.text
.globl add
add:
	pushq %rbp
	movq %rsp, %rbp
	movl (%rdi), %eax
	movl (%rsi), %ecx
	addl %ecx, %eax
	leave
	ret
.type add, @function
.size add, .-add
/* end function add */

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rsp, %rdi
	movl $3, (%rdi)
	subq $16, %rsp
	movq %rsp, %rsi
	movl $5, (%rsi)
	subq $16, %rsp
	movq %rsp, %rax
	movq %rsi, (%rax)
	callq add
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

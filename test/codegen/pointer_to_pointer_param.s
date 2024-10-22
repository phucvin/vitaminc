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
	movq (%rdi), %rax
	movl (%rax), %eax
	movq (%rsi), %rcx
	movl (%rcx), %ecx
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
	movq %rsp, %rcx
	movl $3, (%rcx)
	subq $16, %rsp
	movq %rsp, %rax
	movl $5, (%rax)
	subq $16, %rsp
	movq %rsp, %rdi
	movq %rcx, (%rdi)
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, (%rsi)
	callq add
	movl %eax, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, %eax
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

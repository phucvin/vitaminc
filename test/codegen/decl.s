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
	movq %rsp, %rax
	movl $2, (%rax)
	movl $2, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subq $16, %rsp
	movq %rsp, %rax
	movl $3, (%rax)
	movl $3, %esi
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
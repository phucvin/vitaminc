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
	subq $8, %rsp
	pushq %rbx
	subq $16, %rsp
	movq %rsp, %rbx
	movl $0, (%rbx)
	movl $1, (%rbx)
	movl $0, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, (%rbx)
	movl $1, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subq $16, %rsp
	movq %rsp, %rax
	movl $1, (%rbx)
	movl $0, (%rax)
	movl $1, (%rax)
	movl $0, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, %eax
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits
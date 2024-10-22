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
	pushq %rbx
	pushq %r12
	subq $16, %rsp
	movq %rsp, %rax
	movl $10, (%rax)
	subq $16, %rsp
	movq %rsp, %r12
	movq %rax, (%r12)
	subq $16, %rsp
	movq %rsp, %rax
	movq %r12, (%rax)
	movq (%r12), %rax
	movl (%rax), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subq $16, %rsp
	movq %rsp, %rbx
	movl $20, (%rbx)
	subq $16, %rsp
	movq %rsp, %rax
	movq %rbx, (%rax)
	movq %rbx, (%r12)
	movq (%r12), %rax
	movl (%rax), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movq (%r12), %rax
	movl $30, (%rax)
	movl (%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, %eax
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

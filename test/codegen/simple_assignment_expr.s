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
	movq %rsp, %rbx
	subq $16, %rsp
	movq %rsp, %r12
	movl $0, (%rbx)
	movl $0, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $10, (%r12)
	movl $15, (%rbx)
	movl $15, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $10, %esi
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

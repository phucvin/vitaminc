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
	movl $10, (%rbx)
	subq $16, %rsp
	movq %rsp, %rax
	movq %rbx, (%rax)
	subq $16, %rsp
	movq %rsp, %r12
	movl $10, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $5, (%rbx)
	movl (%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl (%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movq %rbx, (%r12)
	movl $4, (%rbx)
	movl (%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl (%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subq $16, %rsp
	movq %rsp, %rax
	movq %rbx, (%rax)
	movl $3, (%rbx)
	movl (%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl (%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subq $16, %rsp
	movq %rsp, %rax
	movl $1, (%rax)
	subq $16, %rsp
	movq %rsp, %rax
	movl $2, (%rax)
	subq $16, %rsp
	movq %rsp, %rax
	movl $3, (%rax)
	movl $3, %esi
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

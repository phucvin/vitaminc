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
	movl $1, 0(%rbx)
	movl 0(%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $2, 4(%rbx)
	movl 4(%rbx), %eax
	movl %eax, 8(%rbx)
	movl 8(%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl 8(%rbx), %eax
	addl $2, %eax
	movl %eax, 12(%rbx)
	movl 12(%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subq $16, %rsp
	movq %rsp, %rax
	movl $2, (%rax)
	subq $16, %rsp
	movq %rsp, %rax
	movl $0, (%rax)
	subq $16, %rsp
	movq %rsp, %rbx
	movl $1, 0(%rbx)
	movl $2, 4(%rbx)
	movl $3, (%rax)
	movl $3, 8(%rbx)
	movl $4, 12(%rbx)
	movl 0(%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl 4(%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl 8(%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl 12(%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subq $16, %rsp
	movq %rsp, %rbx
	movl $1, 0(%rbx)
	movl $0, 4(%rbx)
	movl $0, 8(%rbx)
	movl 0(%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl 4(%rbx), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl 8(%rbx), %esi
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

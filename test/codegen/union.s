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
	movl $3, (%rbx)
	movl $3, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $3, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $3, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $4, (%rbx)
	movl $4, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $4, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $4, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subq $16, %rsp
	movq %rsp, %rax
	movl $1, (%rax)
	movl $1, %esi
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

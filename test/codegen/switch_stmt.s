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
	movl $2, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $4, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $6, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $7, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $8, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $13, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $16, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $21, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, %eax
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

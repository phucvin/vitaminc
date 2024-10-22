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
	movl %edi, %eax
	addl %esi, %eax
	leave
	ret
.type add, @function
.size add, .-add
/* end function add */

.text
.globl call
call:
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rax
	movl %esi, %edi
	movl %edx, %esi
	callq *%rax
	leave
	ret
.type call, @function
.size call, .-call
/* end function call */

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rsp, %rcx
	leaq call(%rip), %rax
	movq %rax, (%rcx)
	movl $2, %edx
	movl $1, %esi
	leaq add(%rip), %rdi
	callq call
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

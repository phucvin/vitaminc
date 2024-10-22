.data
.balign 1
__builtin_print_format:
	.ascii "%d\012\000"
/* end data */

.text
.globl sum
sum:
	pushq %rbp
	movq %rsp, %rbp
	movl %edi, %eax
	addl %esi, %eax
	addl %edx, %eax
	leave
	ret
.type sum, @function
.size sum, .-sum
/* end function sum */

.text
.globl add_five
add_five:
	pushq %rbp
	movq %rsp, %rbp
	movl %edi, %eax
	addl $5, %eax
	leave
	ret
.type add_five, @function
.size add_five, .-add_five
/* end function add_five */

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	subq $16, %rsp
	movq %rsp, %rbx
	movl $3, %edx
	movl $2, %esi
	movl $1, %edi
	callq sum
	movl %eax, %ecx
	movl %ecx, (%rbx)
	subq $16, %rsp
	movq %rsp, %rax
	movl %ecx, %edi
	addl $4, %edi
	movl %edi, (%rax)
	callq add_five
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

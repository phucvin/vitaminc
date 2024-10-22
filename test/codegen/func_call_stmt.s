.data
.balign 1
__builtin_print_format:
	.ascii "%d\012\000"
/* end data */

.text
.globl five
five:
	pushq %rbp
	movq %rsp, %rbp
	movl $5, %eax
	leave
	ret
.type five, @function
.size five, .-five
/* end function five */

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
	subq $8, %rsp
	pushq %rbx
	movl %edi, %ebx
	callq five
	movl %ebx, %edi
	addl %edi, %eax
	popq %rbx
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
	movl $3, %edx
	movl $2, %esi
	movl $1, %edi
	callq sum
	movl %eax, %edi
	addl $4, %edi
	callq add_five
	movl %eax, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, %eax
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

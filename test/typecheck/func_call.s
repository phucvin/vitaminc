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
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	callq five
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

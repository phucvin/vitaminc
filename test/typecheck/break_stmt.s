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
	movl $0, %eax
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

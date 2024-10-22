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
	subq $16, %rsp
	movq %rsp, %rcx
	movl $0, (%rcx)
	movl $0, %eax
.Lbb3:
	addl $1, %eax
	movl %eax, (%rcx)
	cmpl $5, %eax
	jl .Lbb3
	movl $0, %eax
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

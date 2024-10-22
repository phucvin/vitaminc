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
	movl $5, (%rcx)
	movl $5, %eax
.Lbb3:
	cmpl $0, %eax
	jle .Lbb5
	subl $1, %eax
	movl %eax, (%rcx)
	jmp .Lbb3
.Lbb5:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

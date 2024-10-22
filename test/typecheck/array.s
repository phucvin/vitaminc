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
	movl $1, 0(%rcx)
	movl $2, 4(%rcx)
	movl 4(%rcx), %eax
	addl $1, %eax
	movl %eax, 8(%rcx)
	subq $16, %rsp
	movq %rsp, %rcx
	movl $0, (%rcx)
	subq $16, %rsp
	movq %rsp, %rax
	movl $1, 0(%rax)
	movl $2, (%rcx)
	movl $2, 4(%rax)
	movl $3, 8(%rax)
	movl $4, 12(%rax)
	movl $0, %eax
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

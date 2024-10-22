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
	movq %rsp, %rax
	movl $10, (%rax)
	subq $16, %rsp
	movq %rsp, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, (%rcx)
	movq %rax, (%rdx)
	movl $5, (%rax)
	subq $16, %rsp
	movq %rsp, %rdx
	movq (%rcx), %rax
	movq %rcx, (%rdx)
	movl (%rax), %eax
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

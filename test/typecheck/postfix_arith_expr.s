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
	movq %rsp, %rdx
	movl $0, (%rdx)
	movl $1, (%rdx)
	movl $0, (%rdx)
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rdx, (%rcx)
	movl %edx, %eax
	addl $1, %eax
	movl %eax, (%rcx)
	movl %eax, %eax
	movl $4294967295, %esi
	andq %rsi, %rax
	movq $-4294967296, %rsi
	andq %rsi, %rdx
	orq %rdx, %rax
	subl $1, %eax
	movl %eax, (%rcx)
	movl $0, %eax
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

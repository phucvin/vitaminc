.data
.balign 1
__builtin_print_format:
	.ascii "%d\012\000"
/* end data */

.bss
.balign 4
.globl c
c:
	.fill 4,1,0
/* end data */

.data
.balign 4
.globl a
a:
	.int 1
	.int 2
	.int 3
/* end data */

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	movl $2, a(%rip)
	subq $16, %rsp
	movq %rsp, %rax
	movl $1, (%rax)
	movl $1, 4(%rax)
	movl $0, %eax
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

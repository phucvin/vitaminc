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
	movq %rsp, %rsi
	movl $0, (%rsi)
	subq $16, %rsp
	movq %rsp, %r8
	movl $0, (%r8)
	movl $0, %edi
	movl $0, %eax
.Lbb3:
	cmpl $5, %edi
	jge .Lbb10
	subq $16, %rsp
	movq %rsp, %rdx
	movl $0, (%rdx)
	movl $0, %ecx
.Lbb6:
	cmpl $5, %ecx
	jge .Lbb9
	addl $1, %eax
	movl %eax, (%rsi)
	addl $1, %ecx
	movl %ecx, (%rdx)
	jmp .Lbb6
.Lbb9:
	addl $1, %edi
	movl %edi, (%r8)
	jmp .Lbb3
.Lbb10:
	movl $0, %eax
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

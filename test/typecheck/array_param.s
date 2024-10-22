.data
.balign 1
__builtin_print_format:
	.ascii "%d\012\000"
/* end data */

.text
.globl func
func:
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %eax
	leave
	ret
.type func, @function
.size func, .-func
/* end function func */

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rsp, %rax
	movl $1, 0(%rax)
	movl $2, 4(%rax)
	movl $3, 8(%rax)
	movl (%rax), %edi
	callq func
	movl $0, %eax
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

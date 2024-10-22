.data
.balign 1
__builtin_print_format:
	.ascii "%d\012\000"
/* end data */

.text
.globl add
add:
	pushq %rbp
	movq %rsp, %rbp
	movl %edi, %eax
	addl %esi, %eax
	leave
	ret
.type add, @function
.size add, .-add
/* end function add */

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	subq $16, %rsp
	movq %rsp, %rbx
	leaq add(%rip), %rax
	movq %rax, (%rbx)
	subq $16, %rsp
	movq %rsp, %r12
	movl $3, %esi
	movl $2, %edi
	callq add
	movl %eax, (%r12)
	leaq add(%rip), %rax
	movq %rax, (%rbx)
	subq $16, %rsp
	movq %rsp, %rbx
	movl $2, %esi
	movl $1, %edi
	callq add
	movl %eax, (%rbx)
	movl $0, %eax
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

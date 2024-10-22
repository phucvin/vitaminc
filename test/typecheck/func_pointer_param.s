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
.globl call
call:
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rax
	movl %esi, %edi
	movl %edx, %esi
	callq *%rax
	leave
	ret
.type call, @function
.size call, .-call
/* end function call */

.text
.globl call_decay
call_decay:
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %eax
	leave
	ret
.type call_decay, @function
.size call_decay, .-call_decay
/* end function call_decay */

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	subq $16, %rsp
	movq %rsp, %rbx
	leaq call(%rip), %rax
	movq %rax, (%rbx)
	movl $2, %edx
	movl $1, %esi
	leaq add(%rip), %rdi
	callq call
	leaq call_decay(%rip), %rax
	movq %rax, (%rbx)
	movl $2, %edx
	movl $1, %esi
	leaq add(%rip), %rdi
	callq call_decay
	movl $0, %eax
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

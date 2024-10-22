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
	pushq %rbx
	pushq %r12
	subq $16, %rsp
	movq %rsp, %rax
	movl $0, (%rax)
	movl $0, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subq $16, %rsp
	movq %rsp, %r12
	movl $5, (%r12)
	movl $5, %ebx
.Lbb4:
	cmpl $0, %ebx
	jle .Lbb11
	subq $16, %rsp
	movq %rsp, %rcx
	movl $5, (%rcx)
	movl $5, %eax
.Lbb7:
	cmpl $0, %eax
	jle .Lbb9
	subl $1, %eax
	movl %eax, (%rcx)
	jmp .Lbb7
.Lbb9:
	movl %eax, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subl $1, %ebx
	movl %ebx, (%r12)
	jmp .Lbb4
.Lbb11:
	movl %ebx, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subq $16, %rsp
	movq %rsp, %rcx
	movl $0, (%rcx)
	movl $0, %eax
.Lbb14:
	addl $1, %eax
	movl %eax, (%rcx)
	cmpl $5, %eax
	jl .Lbb14
	movl %eax, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	subq $16, %rsp
	movq %rsp, %r12
	movl $0, (%r12)
	movl $0, %ebx
.Lbb19:
	subq $16, %rsp
	movq %rsp, %rcx
	movl $0, (%rcx)
	movl $0, %eax
.Lbb21:
	addl $1, %eax
	movl %eax, (%rcx)
	cmpl $5, %eax
	jl .Lbb21
	movl %eax, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	addl $1, %ebx
	movl %ebx, (%r12)
	cmpl $5, %ebx
	jl .Lbb19
	movl %ebx, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
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

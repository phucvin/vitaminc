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
	movq %rsp, %r12
	movl $0, (%r12)
	subq $16, %rsp
	movq %rsp, %rbx
	movl $0, (%rbx)
	movl $0, (%r12)
	movl $0, (%rbx)
	movl $0, %eax
	movl $0, %ecx
.Lbb3:
	cmpl $10, %eax
	jge .Lbb6
	addl $1, %eax
	movl %eax, (%r12)
	cmpl $3, %eax
	jg .Lbb3
	addl $1, %ecx
	movl %ecx, (%rbx)
	jmp .Lbb3
.Lbb6:
	movl %ecx, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, (%r12)
	movl $0, (%rbx)
	movl $0, %eax
	movl $0, %ecx
.Lbb9:
	addl $1, %eax
	movl %eax, (%r12)
	cmpl $5, %eax
	jg .Lbb11
	addl $1, %ecx
	movl %ecx, (%rbx)
.Lbb11:
	cmpl $10, %eax
	jl .Lbb9
	movl %ecx, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, (%r12)
	movl $0, (%rbx)
	movl $0, %eax
	movl $0, %ecx
.Lbb15:
	cmpl $10, %eax
	jge .Lbb19
	cmpl $7, %eax
	jge .Lbb18
	addl $1, %ecx
	movl %ecx, (%rbx)
.Lbb18:
	addl $1, %eax
	movl %eax, (%r12)
	jmp .Lbb15
.Lbb19:
	movl %ecx, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, (%r12)
	movl $0, (%rbx)
	movl $0, %esi
	movl $0, %ecx
.Lbb22:
	cmpl $10, %esi
	jge .Lbb29
	subq $16, %rsp
	movq %rsp, %rdx
	movl $0, (%rdx)
	movl $0, %eax
.Lbb25:
	cmpl $10, %eax
	jge .Lbb28
	addl $1, %eax
	movl %eax, (%rdx)
	cmpl $3, %eax
	jg .Lbb25
	addl $1, %ecx
	movl %ecx, (%rbx)
	jmp .Lbb25
.Lbb28:
	addl $1, %esi
	movl %esi, (%r12)
	jmp .Lbb22
.Lbb29:
	movl %ecx, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, (%r12)
	movl $0, (%rbx)
	movl $0, %ecx
	movl $0, %esi
.Lbb32:
	subq $16, %rsp
	movq %rsp, %rdx
	movl $0, (%rdx)
	movl $0, %eax
.Lbb34:
	addl $1, %eax
	movl %eax, (%rdx)
	cmpl $5, %eax
	jg .Lbb36
	addl $1, %ecx
	movl %ecx, (%rbx)
.Lbb36:
	cmpl $10, %eax
	jl .Lbb34
	addl $1, %esi
	movl %esi, (%r12)
	cmpl $10, %esi
	jl .Lbb32
	movl %ecx, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, (%r12)
	movl $0, (%rbx)
	movl $0, %esi
	movl $0, %ecx
.Lbb42:
	cmpl $10, %esi
	jge .Lbb50
	subq $16, %rsp
	movq %rsp, %rdx
	movl $0, (%rdx)
	movl $0, %eax
.Lbb45:
	cmpl $10, %eax
	jge .Lbb49
	cmpl $7, %eax
	jge .Lbb48
	addl $1, %ecx
	movl %ecx, (%rbx)
.Lbb48:
	addl $1, %eax
	movl %eax, (%rdx)
	jmp .Lbb45
.Lbb49:
	addl $1, %esi
	movl %esi, (%r12)
	jmp .Lbb42
.Lbb50:
	movl %ecx, %esi
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

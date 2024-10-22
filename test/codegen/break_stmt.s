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
	movl $0, %ecx
	movl $0, %eax
.Lbb3:
	cmpl $10, %ecx
	jge .Lbb7
	cmpl $3, %ecx
	jz .Lbb6
	addl $1, %eax
	movl %eax, (%rbx)
	addl $1, %ecx
	movl %ecx, (%r12)
	jmp .Lbb3
.Lbb6:
	movl %eax, %esi
	jmp .Lbb8
.Lbb7:
	movl %eax, %esi
.Lbb8:
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, (%r12)
	movl $0, (%rbx)
	movl $0, %eax
	movl $0, %ecx
.Lbb10:
	cmpl $5, %eax
	jz .Lbb13
	addl $1, %ecx
	movl %ecx, (%rbx)
	addl $1, %eax
	movl %eax, (%r12)
	cmpl $10, %eax
	jl .Lbb10
.Lbb13:
	movl %ecx, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, (%r12)
	movl $0, (%rbx)
	movl $0, %ecx
	movl $0, %eax
.Lbb15:
	cmpl $10, %ecx
	jge .Lbb20
	cmpl $7, %ecx
	jz .Lbb19
	addl $1, %eax
	movl %eax, (%rbx)
	addl $1, %ecx
	movl %ecx, (%r12)
	jmp .Lbb15
.Lbb19:
	movl %eax, %esi
	jmp .Lbb21
.Lbb20:
	movl %eax, %esi
.Lbb21:
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, (%r12)
	movl $0, (%rbx)
	movl $0, %esi
	movl $0, %eax
.Lbb23:
	cmpl $10, %esi
	jge .Lbb30
	subq $16, %rsp
	movq %rsp, %rdx
	movl $0, (%rdx)
	movl $0, %ecx
.Lbb26:
	cmpl $10, %ecx
	jge .Lbb29
	cmpl $3, %ecx
	jz .Lbb29
	addl $1, %eax
	movl %eax, (%rbx)
	addl $1, %ecx
	movl %ecx, (%rdx)
	jmp .Lbb26
.Lbb29:
	addl $1, %esi
	movl %esi, (%r12)
	jmp .Lbb23
.Lbb30:
	movl %eax, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, (%r12)
	movl $0, (%rbx)
	movl $0, %eax
	movl $0, %esi
.Lbb33:
	subq $16, %rsp
	movq %rsp, %rdx
	movl $0, (%rdx)
	movl $0, %ecx
.Lbb35:
	cmpl $5, %ecx
	jz .Lbb38
	addl $1, %eax
	movl %eax, (%rbx)
	addl $1, %ecx
	movl %ecx, (%rdx)
	cmpl $10, %ecx
	jl .Lbb35
.Lbb38:
	addl $1, %esi
	movl %esi, (%r12)
	cmpl $10, %esi
	jl .Lbb33
	movl %eax, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, (%r12)
	movl $0, (%rbx)
	movl $0, %esi
	movl $0, %eax
.Lbb43:
	cmpl $10, %esi
	jge .Lbb51
	subq $16, %rsp
	movq %rsp, %rdx
	movl $0, (%rdx)
	movl $0, %ecx
.Lbb46:
	cmpl $10, %ecx
	jge .Lbb50
	cmpl $7, %ecx
	jz .Lbb50
	addl $1, %eax
	movl %eax, (%rbx)
	addl $1, %ecx
	movl %ecx, (%rdx)
	jmp .Lbb46
.Lbb50:
	addl $1, %esi
	movl %esi, (%r12)
	jmp .Lbb43
.Lbb51:
	movl %eax, %esi
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

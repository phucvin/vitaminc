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
.globl d
d:
	.int 6
/* end data */

.bss
.balign 4
.globl b
b:
	.fill 8,1,0
/* end data */

.data
.balign 4
.globl a
a:
	.int 6
	.int 5
	.int 3
/* end data */

.data
.balign 4
.globl e
e:
	.int 8
	.int 9
	.fill 8,1,0
/* end data */

.text
.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	movl c(%rip), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $4, d(%rip)
	movl $4, %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl b(%rip), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $7, a(%rip)
	movl $4, a+8(%rip)
	movl a(%rip), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl a+4(%rip), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl a+8(%rip), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl e(%rip), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl e+4(%rip), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl e+8(%rip), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl e+12(%rip), %esi
	leaq __builtin_print_format(%rip), %rdi
	callq printf
	movl $0, %eax
	leave
	ret
.type main, @function
.size main, .-main
/* end function main */

.section .note.GNU-stack,"",@progbits

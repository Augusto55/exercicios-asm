%include '../util.asm'

section		.text
global		_start

_start:
	xor		rbx, rbx
	.loop:
		call	readint
		mov		[vet+rbx*8], rax
		inc		rbx
		cmp		rbx,8
		jl 		.loop
		dec		rbx
		call 	endl
	.print:
		mov	 	rdi, [vet+rbx*8]
		call 	printint
		call 	endl
		dec 	rbx
		cmp 	rbx, 0
		jge		.print
		call 	exit0
		
		
section 	.bss
vet: 		resq 8

%include	'../util.asm'

section		.text
global		_start	

_start:

	xor 	rbx, rbx	

loop:
	call	readint			;input numero
	mov		r12, rax        ;colocar na variável
	cmp 	r12, 0
	je		fim
	AND 	r12, 1
	JNZ	    impar				;zf = 1 ---> impar
	JMP		loop			;zf = 0 ---> par
impar:
	INC 	rbx
	jmp  	loop
fim:
	mov		rdi, rbx
	call 	printint
	call 	endl
	call 	exit0
	
	
	
	;call	readint			;input numero
	;mov		r13, rax		;colocar na variável
	;cmp		r12, r13		;comparar
	;cmovg	rdi, r12		;copiar para rdi se r12 for maior
	;cmovng  rdi, r13		;copiar para rdi se r13 for maior
	;call    printint		;printar
	;call 	endl
	;call    exit0


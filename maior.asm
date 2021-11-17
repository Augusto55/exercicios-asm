%include	'../util.asm'

section		.text
global		_start	

_start:
	call	readint			;input numero
	mov		r12, rax        ;colocar na variável       
	call	readint			;input numero
	mov		r13, rax		;colocar na variável
	cmp		r12, r13		;comparar
	cmovg	rdi, r12		;copiar para rdi se r12 for maior
	cmovng  rdi, r13		;copiar para rdi se r13 for maior
	call    printint		;printar
	call 	endl
	call    exit0


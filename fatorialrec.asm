%include '../util.asm'

section		.text
global		_start

fatorial:
	test 	rdi, rdi 			;rdi = n
	jz 		.n0
	push 	rbx
	mov 	rbx, rdi
	
	dec 	rdi
	call 	fatorial
	imul 	rax, rbx
	pop 	rbx
	ret 	
	
	.n0:
			mov rax, 1
			ret 	

_start:
    ; print first string
    lea     rdi, [msg1]
    call    printstr
            
    ; r15 = fatorial(readint())
    call    readint
    mov     rdi, rax
    call    fatorial
    mov     r15, rax

    ; print 2nd string
    lea     rdi, [msg2]
    call    printstr

    ; print result (saved in r15) and exit 
    mov     rdi, r15
    call    printint
    call    endl
	call	exit0 

; Dados em memória
section     .data
msg1:       db 'Digite um número: ', 0
msg2:       db 'Fatorial: ', 0




	
		
		

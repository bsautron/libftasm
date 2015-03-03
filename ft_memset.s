
section	.data

section	.text
	global	_ft_memset

_ft_memset:
	push	rbp				; push base pointer au dessus de la stack
	mov		rbp, rsp		; tu met laddresse de rsp dans rbp
	xor		rcx, rcx		; on met rcx a 0
	mov 	rbx, rdi 		; mov de la chaine dans rbx

loop:
	mov		rax, rsi
	mov		byte [rbx], al	; on prend les byte premier bit de rbx, et les remplace par 0
	inc		rbx				; on increment le pointeur de la chaine
	inc		rcx				; i++
	cmp		rcx, rdx		; on compare le compteur et la taille rsi
	jne		loop			; si cest pas egale on jmp a loop

	leave
	ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Author 	: snourry
;; Date   	: 2022-06-10 18:21:12
;; Filename	: ft_isupper
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

format ELF64

public ft_isupper

section '.text' executable

ft_isupper:
	push rbp
	mov rbp, rsp
	xor rax, rax
	or rax, 0x1
	sub	rdi, 0x41
	cmp rdi, 0x1A
	ja @f
	add rdi, 0x41
	leave
	ret

@@:
	add rdi, 0x41
	xor rax, rax
	leave
	ret

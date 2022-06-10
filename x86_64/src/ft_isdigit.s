;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Author 	: snourry
;; Date   	: 2022-06-10 16:46:28
;; Filename	: ft_isdigit
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

format ELF64

public ft_isdigit

section '.text' executable

ft_isdigit:
	push rbp
	mov rbp, rsp
	xor rax, rax
	or rax, 0x1
	sub	rdi, 0x30
	cmp rdi, 0x9
	ja @f
	add rdi, 0x30
	leave
	ret

@@:
	add rdi, 0x30
	xor rax, rax
	leave
	ret

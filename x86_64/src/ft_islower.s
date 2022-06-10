;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Author 	: snourry
;; Date   	: 2022-06-10 18:17:31
;; Filename	: ft_islower
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

format ELF64

public ft_islower

section '.text' executable

ft_islower:
	push rbp
	mov rbp, rsp
	xor rax, rax
	or rax, 0x1
	sub	rdi, 0x61
	cmp rdi, 0x1A
	ja @f
	add rdi, 0x61
	leave
	ret

@@:
	add rdi, 0x61
	xor rax, rax
	leave
	ret

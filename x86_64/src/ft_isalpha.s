;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Author 	: snourry
;; Date   	: 2022-06-10 18:54:32
;; Filename	: ft_isalpha
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


include "ft_islower.s"
include "ft_isupper.s"

format ELF64

public ft_isalpha

section '.text' executable

ft_isalpha:
	push rbp
	mov rbp, rsp
	call ft_islower
	xor rax, rax
	leave
	ret

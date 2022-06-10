;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Author   : snourry
;; Date     : 2022-06-10 19:46:28
;; Filename : ft_isalpha
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

format ELF64

public ft_isalpha

extrn ft_islower
extrn ft_isupper

section '.text' executable

ft_isalpha:
	push rbp
	mov rbp, rsp
	call ft_isupper
	mov r10, rax
	call ft_islower
	or rax, r10
	leave
	ret

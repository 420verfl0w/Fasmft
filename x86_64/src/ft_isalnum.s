;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Author   : snourry
;; Date     : 2022-06-11 20:53:42
;; Filename : ft_isalnum
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

format ELF64

public ft_isalnum

extrn ft_isalpha
extrn ft_isdigit

section '.text' executable

ft_isalnum:
	push rbp
	mov rbp, rsp
	call ft_isalpha
	mov r10, rax
	call ft_isdigit
	or rax, r10
	leave
	ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Author 	: stales
;; Date   	: 2022-30-08 20:30:45
;; Filename	: ft_atoi
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

format ELF64

public ft_atoi

section '.text' executable

ft_atoi:
	push rbp
	mov rbp, rsp
	
	leave
	ret

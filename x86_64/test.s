;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Author 	: stales
;; Date   	: 2022-16-09 15:16:13
;; Filename	: test
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

format ELF64

public _start

extrn printf

section '.data' writeable
	fmt db "%s", 0xa, 0

section '.text' executable

_start:
	mov rdi, fmt
	mov rsi, qword [rsp + 0x10]
	xor al, al
	call printf

_exit:
	mov rax, 0x3c
	xor rdi, rdi
	syscall

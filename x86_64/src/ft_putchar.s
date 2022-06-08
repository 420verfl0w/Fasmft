; Author : stales
; Date	 : 08/06/2022
; PROMO  : First no pleb

format ELF64

public ft_putchar

section '.text' executable

ft_putchar:
	push rbp			; create new frame
	mov rbp, rsp		; set base pointer to new stack frame
	push rdi			; create pointer
	mov rax, 0x1		; SYS_write
	mov rdi, 0x1		; STDOUT fd 1
	mov rsi, rsp		; Char to write
	mov rdx, 0x1		; Len
	syscall				; Kernel interrupt
	leave				; rm stack frame mov rsp, rbp && pop rbp
	ret					; pop rip, leave function return in the main

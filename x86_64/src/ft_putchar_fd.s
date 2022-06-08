; Author : stales
; Date   : 08/06/2022

format ELF64

public ft_putchar_fd

section '.text' executable

ft_putchar_fd:
	push rbp		; create new stack frame
	mov rbp, rsp	; set base pointer to new stack frame
	push rdi		; create pointer
	mov rax, 0x1	; SYS_Write
	mov rdi, rsi	; FD
	mov rsi, rsp	; char to write
	mov rdx, 0x1	; len 
	syscall			; syscall Write
	leave			; mov rsp, rbp && pop rsp
	ret				; pop rip

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Author 	: stales
;; Date   	: 2022-26-09 10:26:18
;; Filename	: ft_atoi
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


format ELF64

public ft_atoi

section '.text' executable

ft_atoi:
	jmp .L14

.L17:
	lea eax, [rdx - 0x9] ; check whitespace and increment str
	cmp al, 0x4			; 
	jbe .L4
	cmp dl, 0x20		; check ' '
	jne .L16

.L4:
	add rdi, 0x1

.L14:
	movzx edx, byte [rdi]	; check *str is not null byte
	test dl, dl
	jne .L17

.L10:
	xor eax, eax
	ret

.L16:
	mov ecx, 0x1			; set neg int to 1
	jmp .L5

.L7:
	add rdi, 0x1			; increment str
	mov eax, ecx			; set int 1 in eax
	neg eax					; swap sign 1 to -1 aka (0xffffffff)
	cmp dl, 0x2d			; check if '-'
	movzx edx, byte [rdi]	; *str
	cmove ecx, eax			; move eax in ecx if dl is '-'
	test dl, dl				; if dl & dl == 0
	je .L10					; return 

.L5:
	lea eax, [rdx - 0x2b]		; check sign
	test al, 0xfd				; al & 0xfd == 0
	je .L7
	lea eax, [rdx - 0x30]		; check if a number
	cmp al, 0x9					; cmp > 9
	xor eax, eax
	ja .L11						; return

.L8:
	and edx, 0xF				; take right nibble byte
	lea eax, [rax+rax*4]		; (rax * 4) + rax
	add rdi, 0x1				; increment str
	lea eax, [rdx+rax*2]		; (rax*2) + rdx
	movzx edx, byte [rdi]		; *str
	lea esi, [rdx-0x30]			; rdx - 0x30 to get number
	cmp sil, 0x9				; if sil <= 9
	jbe .L8						; reloop
	imul eax, ecx				; mul by sign
	ret							; return

.L11:
	ret

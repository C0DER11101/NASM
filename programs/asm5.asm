section .bss  ; bss stands for block starting symbol  -> used for reserving space in memory
	num RESB 3  ; reserve 3 bytes of data on memory

	; RESB -> reserve byte
	; RESW -> reserve word
	; RESD -> reserve double words
	; RESQ -> reserve quadwords

section .data  ; define with a default value
	num2 DB 3 DUP(2)

section .text

	global _start

	_start:
		;MOV [num], 1   ; not going to work
		MOV bl, 1
		MOV bl, [num2]
		MOV [num], bl
		MOV [num+1], bl
		MOV [num+2], bl

		MOV eax, 1
		INT 80h

; Masking

section .data

section .text
	global _start

	_start:
		MOV eax, 0b1010
		NOT eax

		AND eax, 0x0000000f  ; 0x0000000f is the mask

		MOV eax, 1
		INT 80h

section .data

section .text
	global _start

	_start:
		MOV al, 0xFF
		MOV bl, 2
		IMUL bl

		MOV eax, 1
		INT 80h

section .data

section .text
	global _start

	_start:
		MOV al, 2
		MOV bl, 3
		MUL bl

		MOV eax, 1
		INT 80h

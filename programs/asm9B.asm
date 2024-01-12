section .data

section .text

	global _start
	_start:
		MOV eax, -6
		MOV ecx, 2

		IDIV ecx

		MOV eax, 1
		INT 80h

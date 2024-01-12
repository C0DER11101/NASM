section .data

section .text
	global _start

	_start:
		MOV eax, 11   ; dividend
		MOV ecx, 2    ; divisor

		DIV ecx

		MOV eax, 1

		INT 80h

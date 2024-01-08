section .data
	char DB 'A' ; a character

section .text

	global _start

	_start:

		MOV bl, [char]
		MOV eax, 1
		INT 80h

section .data

section .text
	global _start

	_start:
		MOV eax, 3
		MOV ebx, 5
		SUB eax, ebx   ; eax = eax - ebx

		MOV ebx, 2
		ADD eax, ebx
		MOV eax, 1
		INT 80h

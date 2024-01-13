section .data

section .text
	global _start:

	_start:
		MOV eax, 0b1010
		MOV ebx, 0b1100

		XOR eax, ebx   ; eax XOR ebx, store the value into eax

		MOV eax, 1
		INT 80h

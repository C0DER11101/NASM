; Arithmetic instructions

section .data

section .text
	global _start
	_start:
		; add two numbers together
		MOV eax, 1
		MOV ebx, 2
		ADD eax, ebx   ; eax = eax + ebx
		MOV eax, 1
		INT 80h

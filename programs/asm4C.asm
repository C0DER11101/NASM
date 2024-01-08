section .data
	string1 DB "ABA", 0   ; the 0 at the end is called the null terminator
	string2 DB "CDE", 0

section .text
	global _start
	_start:
	MOV ebx, [string1]
	MOV eax, 1
	INT 80h

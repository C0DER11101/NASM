section .data
	; declaring bytes
	num DB 1
	num2 DB 2
	num3 DB 3

section .text
	global _start

	_start:
	MOV bh, [num]
	MOV ch, [num2]
	MOV dh, [num3]
	MOV eax, 1
	INT 80h

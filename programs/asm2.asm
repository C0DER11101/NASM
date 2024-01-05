; working with data and stack memory

section .data
	num DD 5

section .text
	global _start

	_start:
		MOV eax, 1
		;MOV ebx, num
		MOV ebx, [num]  ; go to the address stored in num and get the value that is stored in that address and move that into ebx
		INT 80h

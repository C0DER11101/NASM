; Logical operators

section .data

section .text
	global _start

	_start:
		; AND operation
		MOV eax, 0b1010
		MOV ebx, 0b1100

		AND eax, ebx   ; perform eax AND ebx and store the result in eax

		; OR operation
		MOV eax, 0b1010
		MOV ebx, 0b1100

		OR eax, ebx    ; perform eax OR ebx and store in the result in eax

		; NOT operator
		NOT eax        ; perform !eax and store the result in eax

		MOV eax, 1
		INT 80h

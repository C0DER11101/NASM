section .data

section .text
	global _start
	_start:
		MOV al, 0b11111111   ; 0b means binary, so we are storing the binary number 11111111 into register eax
		MOV bl, 0b0001
		ADD al, bl  ; al = al + bl
		ADC ah, 0
		MOV eax, 1
		INT 80h

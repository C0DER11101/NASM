section .data   ; stores variables

section .text   ; contains the actual code of our program
global _start

_start:
	MOV eax, 1  ; move into register eax the value 1(this is sys_exit)
	MOV ebx, 1  ; move into ebx the value 1(this is exit status code)
	INT 80h   ; h stands for hex(so 80h is basically 0x80)

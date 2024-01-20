section .data
	pathname DD "/home/priyanuj/temp/test.txt"

section .bss
	buffer RESB 1024

section .text

	global main
	
	main:
		; opening a file
		MOV eax, 5
		MOV ebx, pathname
		MOV ecx, 0
		INT 80h

		; reading from the file
		MOV ebx, eax  ; eax stores the file descriptor that got returned after the interrupt was performed
		MOV eax, 3  ; for sys_read
		MOV ecx, buffer
		MOV edx, 1024
		INT 80h

		; exit
		MOV eax, 1
		INT 80h

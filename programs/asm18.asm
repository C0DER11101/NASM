; passing data to functions on the stack

section .data


section .text

	global main
	
	addTwo:
		PUSh ebp
		MOV ebp, esp
		MOV eax, [ebp+8]
		MOV ebx, [ebp+12]
		
		ADD eax, ebx
		POP ebp
		
		RET

	main:
		PUSH 4
		PUSH 1
		
		CALL addTwo
		
		MOV ebx, eax
		MOV eax, 1
		INT 80h
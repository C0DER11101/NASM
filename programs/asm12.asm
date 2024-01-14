; LOOPS

section .data
	list DB 1,2,3,4  ; an array

section .text

	global _start

	_start:
		MOV eax, 0  ; index of the array
		MOV cl, 0  ; sum of the array elements

		loop:
			MOV bl, [list+eax]
			ADD cl, bl
			INC eax   ; increment value of eax by 1

			CMP eax, 4
			JGE end
			JMP loop

		end:
			MOV eax, 1
			INT 80h

section .data

section .text

	global _start

	_start:
		MOV eax, 1
		MOV ebx, 2

		CMP eax, ebx   ; checks the result of the subtraction -> eax - ebx
		JL lesser      ; jump to the label lesser if eax < ebx
		JMP end        ; this instruction is an unconditional instruction meaning that it will execute as it doesn't depend on conditions


	end:
		MOV eax, 1
		INT 80h

	lesser:
		MOV eax, 1
		INT 80h

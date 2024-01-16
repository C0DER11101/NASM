; calling standard C functions

extern printf
extern exit

section .data
	msg DB "Hello world!",0
	msg2 DB "This is test!",0
	fmt DB "Output is: %s %s",10,0   ; 10 is the ASCII value of the line feed(or commonly known as newline)

section .text

	global main

	main:
		; calling printf(fmt, msg);
		PUSH msg2
		PUSH msg
		PUSH fmt
		CALL printf

		; calling exit(1);
		PUSH 10
		CALL exit


section .data
	text1 db "Enter the String",10
	text1 db "Your String is: "
	text1 db "Enter the Int",10
	text1 db "Your Int is: "

section .bss
	stringIn resb 256
	intIn resb 256

section .text
	global _start

_start:
	call _printIn1
	call _getString
	call _printIn2
	call _getInt
	call _printOut1
	call _printString
	call _printOut2
	call _printInt

	mov rax, 60
	mov rdi, 0
	syscall

_printIn1:
	mov rax, 1
	mov rdi, 1
	mov rsi, text1
	mov rdx, 17
	syscall
	ret

_printOut1:
	mov rax, 1
	mov rdi, 1
	mov rsi, text2
	mov rdx, 16
	syscall
	ret

_printString:
	mov rax, 1
	mov rdi, 1
	mov rsi, stringIn
	mov rdx, 256
	syscall
	ret

_getString:
	mov rax, 0
	mov rdi, 0
	mov rsi, stringIn
	mov rdx, 256
	syscall
	ret

_getInt:
	mov rax, 0
	mov rdi, 0
	mov rsi, intIn
	mov rdx, 256
	syscall
	ret

_printInt:
	mov rax, 1
	mov rdi, 0
	mov rsi, intIn
	mov rdx, 256
	syscall
	ret

_printIn2:
	mov rax, 1
	mov rdi, 1
	mov rsi, text3
	mov rdx, 14
	syscall
	ret

_printOut2:
	mov rax, 1
	mov rdi, 1
	mov rsi, text4
	mov rdx, 13
	syscall
	ret
;app.asm 003
section .data
    msg db "Haifa 2025 & Gomel!",10,0
section .bss

section .text
    global _start
_start:

push rbp
mov rbp,rsp

mov rax ,1
mov rdi ,1
mov rsi ,msg
mov rdx ,23
syscall

mov rsp,rbp
pop rbp

;exit
mov rax,60
mov rdi,0
syscall
section .data
    msg1 db "Hello,Baddy!",10,0
    msg1Len equ $-msg1-1 ;длина первой строки без 0
    msg2 db "Alive and Hi!",10,0
    msg2Len equ $-msg2-1 ;длина другой строки без 0 
    radius dq 777
    pi dq 3.14

    section .bss
    section .text
        global _start
    _start:
    push rbp
    mov rbp,rsp ;пролог функции.
    mov rax,1
    mov rdi,1
    mov rsi,msg1
    mov rdx,msg1Len
    syscall
    mov rax,1
    mov rdi,1
    mov rsi,msg2
    mov rdx,msg2Len
    syscall

    mov rsp,rbp ;эпилог функции
    pop rbp

    mov rax,60
    mov rdi,0
    syscall
    

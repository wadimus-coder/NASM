

section .data
    msg: db " WadaTec &Git and Nasm in 2025!))",0
    fmtstr: db "%s",10,0
section .bss
section .text
extern printf

global main
main:
    push rbp
    mov rbp, rsp
    
    
    mov rax,0
    mov rdi,fmtstr
    mov rsi,msg
    call printf
   
    mov rsp,rbp
    pop rbp
    
ret

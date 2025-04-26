;app.asm 003a-printf_args
extern printf
section .data
    msg db  "Wadim OK!",0
    format db "It's my words are: %s",10,0
section .bss
section .text
    global main
main:
    push rbp
    mov rbp,rsp  ; func prologue

    mov rdi,format
    mov rsi,msg
    mov rax,0
    call printf

    mov rsp,rbp
    pop rbp

    ;exit
    mov rax,60
    mov rdi,0
    syscall

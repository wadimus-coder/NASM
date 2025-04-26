;app.asm 003a-printf_args
extern printf
section .data
    msg db  "Wadim OK!",0
    format db "It's my words are: %s",10,0 ;формат вывода строки
section .bss
section .text
    global main
main:
    push rbp
    mov rbp,rsp  ; func prologue

    mov rdi,format ;первый аргумент для printf
    mov rsi,msg    ;второй аргумент для printf
    mov rax,0      ;htubcnhs xmm не применяются
    call printf    ;вызов внешней printf

    mov rsp,rbp    ;; func epuilogue
    pop rbp

    ;exit
    mov rax,60
    mov rdi,0
    syscall

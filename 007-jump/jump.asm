;jump.asm Листинг 7.1
extern printf
section .data
    number1 dq 47
    number2 dq 140
    format1 db "NUMBER1 >= NUMBER2",10,0
    format2 db "NUMBER1 <= NUMBER2",10,0

section .bss
section .text
    global main
main:
push rbp
mov rbp,rsp ;prologue
    mov rax,[number1]  ;передача чисел в регистры
    mov rbx,[number2]
    cmp rax,rbx   ;сравнение регистров rax & rbx
    jge greater
mov rdi,format2
mov rax,0
    call printf
    jmp exit

greater:
    mov rdi,format1
    mov rax,0
    call printf  ;вывод строки format1

exit:
    mov rsp,rbp
    pop rbp
    ret

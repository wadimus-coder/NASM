;app.asm 006-format_types

section .data
    msg1            db "Hello,Wadim!)))",0
    msg2            db "I'm fa programmer i C & nasm!",0
    radius          dd 3779
    pi              dq 3.14
    format_str      db "%s",10,0 ;различные форматы
    format_flt      db "%lf",10,0
    format_int      db "%d",10,0
section .bss
section .text
extern printf
    global main
main:
    push rbp
    mov rbp,rsp  ;prologue
;print msg1
    mov rax,0    ;без плавающей точки
    mov rdi,format_str
    mov rsi,msg1
    call printf

;print msg2
    mov rax,0    ;без плавающей точки
    mov rdi,format_str
    mov rsi,msg2
    call printf
;print pi
    mov rax,1     ;используется 1 регистр xmm
    movq xmm0,[pi]
    mov rdi,format_flt
    call printf
;print radius
    mov rax,0
    mov rdi,format_int
    mov rsi,[radius]
    call printf

    mov rsp,rbp
    pop rbp
    ;leave

    ret

    








    
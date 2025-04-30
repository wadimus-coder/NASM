; hello.asm начало
section .data
    msg  db   "hello, Larnaca & Haifa!))",10,0
    msg1 db   "Grusha is my buddy.",10,0
    msg2 db   "Victory!",10,0
section .bss
section .text
    global main
main:
    push rbp
    mov rbp, rsp; for correct debugging
  
    ;print msg
    mov rax,1    ;1 = write
    mov rdi,1    ;1 =to stdout
    mov rsi,msg  ;string to display
    mov rdx,30   ;длина строки
    syscall      ;системный вызов
a:
    ;print msg1
    mov rax,1
    mov rdi,1
    mov rsi,msg1
    mov rdx,20
    syscall
b:
    ;print msg2
    mov rax,1
    mov rdi,1
    mov rsi,msg2
    mov rdx,10
    syscall

    ;exit
    mov rax,60   ;60 -exit
    mov rdi,0    ;0 = success exit code
    syscall      ;quit
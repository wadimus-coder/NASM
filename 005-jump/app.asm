;app.asm
section .data
    bNum db 123
    wNum dw 12345
    dNum dd 12345
    qNum1 dq 123456789012345
    qNum2 dq 123456
    qNum dq 3.14
section .bss
section .text
    global main
main:
push rbp
mov rbp,rsp
    mov rax,-1
    mov al,byte [bNum]
    xor rax,rax
    mov al,byte [bNum]
    mov rax,-1
    mov ax,word [wNum]
    xor rax,rax
    mov ax,word [wNum]
    mov rax,-1

    mov rsp,rbp
    pop rbp
    ret



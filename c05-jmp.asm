[org 0x0100]

jmp start ; only situation where we can use jmp

num1: dw 10,20,30,40,50
result: dw 0

start:
    mov ax, 0
    mov bx, 0

    outerloop:
        add ax, [num1+bx]
        add bx, 2
        cmp bx, 10
        jne outerloop 
    
    mov [result], ax

    mov ax, 0x4c00
    int 0x21
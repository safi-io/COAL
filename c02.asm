[org 0x0100]

; program to add 3 numbers
; using memory variables

; mov [num1], [num2] illegal 

mov ax, [num1]
mov bx, [num1 + 2]
mov cx, [num1 + 4]

add ax, bx
add ax, cx
mov [num1 +6], ax

mov ax, 0x4c00
int 0x21

num1: dw 5, 10,15 ,0 ; global variables
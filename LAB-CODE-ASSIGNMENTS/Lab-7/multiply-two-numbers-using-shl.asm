org 100h

mov ax, 5       ; multiplicand
mov bx, 6       ; multiplier

mov cx, ax      ; store original 5
shl ax, 2       ; 5 * 4 = 20
shl cx, 1       ; 5 * 2 = 10
add ax, cx      ; 20 + 10 = 30

add al, '0'     ; single digit only
mov dl, al
mov ah, 02h
int 21h

mov ah, 4Ch
int 21h

[org 100h]

mov al, 7Fh
shl al, 1

mov ax, 4C00h
int 21h

; The above code shifts the value 7Fh (127 in decimal) to the left by 1 bit.
; This multiplies the value by 2, resulting in 0FEh (254 in decimal).
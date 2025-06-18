[org 100h]

mov cx, 1234h
ror cx, 1
ror cx, 1

mov ax, 4C00h
int 21h

; The above code rotates the value 1234h (4660 in decimal) to the right by 1 bit twice.
; This divides the value by 4, resulting in 048Dh.
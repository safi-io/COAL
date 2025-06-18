[org 0x100]

mov ax, 5          ; dividend
mov bl, 2          ; divisor

div bl             ; quiotent will go in al, remainder in ah

mov ax, 0x4c00
int 0x21

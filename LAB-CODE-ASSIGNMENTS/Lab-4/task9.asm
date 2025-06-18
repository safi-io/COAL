[org 0x100]

mov ax, 0xFFFB
mov bl, 2

div bl

mov ax, 0x4c00
int 0x21


; [org 0x100]

; mov ax, 0xFFFB
; mov dx, 0
; mov bx, 2

; div bx

; mov ax, 0x4c00
; int 0x21
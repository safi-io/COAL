[org 0x0100]

mov ax, 15          ; Random value for AX
mov bx, 25          ; Random value for BX

sub ax, bx          ; AX = BX - AX

add ax, 1           ; AX = AX + 1
inc ax              ; AX = AX + 1 (alternative way)

mov cx, ax          ; CX = AX + BX
add cx, bx

sub bx, 1           ; BX = BX - 1
add bx, 10          ; BX = BX + 10
dec bx              ; BX = BX - 1 (alternative way)

mov dx, 5h          ; DX = 5h
sub dx, ax          ; AX = 5h - AX

mov ax, 4Ch         ; AX = 4Ch + 1Bh (binary converted to hex)
add ax, 1Bh

mov bx, 10d         ; BX = 10d + 23d + 32h
add bx, 23d
add bx, 32h

mov ax, 0x4c00      ; DOS exit
int 0x21

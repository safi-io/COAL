[org 0x0100]


; SOLVED USING ONE REGISTOR
mov ax, 6 // 6
sub ax, 58 // 
add ax, 0x0015

; SOLVED USING TWO REGISTORS
xor ax, ax  
mov ax, 6
mov bx, 58
sub ax, bx
add ax, 0x0015

mov ax, 0x4c00
int 0x21
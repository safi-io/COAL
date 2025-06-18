section .text
global _start

_start:
    xor bl, bl

    mov al, 1
    shl bl, 1
    or  bl, al

    mov al, 0
    shl bl, 1
    or  bl, al

    mov al, 1
    shl bl, 1
    or  bl, al

    mov al, 1
    shl bl, 1
    or  bl, al


    mov ah, 0x4C
    int 0x21

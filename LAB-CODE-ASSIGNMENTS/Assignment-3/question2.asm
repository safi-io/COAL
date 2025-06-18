org 100h         

section .data
    name_msg db 'Muhammad Safiullah Khan$'

section .text
start:
    mov dx, name_msg
    mov ah, 09h 
    int 21h

    mov ah, 4Ch
    int 21h

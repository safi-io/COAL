org 100h

start:
    ; Read a character from keyboard
    mov ah, 01h
    int 21h            ; AL = ASCII of digit (e.g., '5' = 53)

    sub al, '0'        ; Convert ASCII to number (0–9)
    
    ; Check if even or odd using AND
    and al, 1          ; AL = AL & 1
                       ; Result: 0 = even, 1 = odd

    ; Show result
    mov dl, 'E'        ; Default = Even
    cmp al, 1
    jne show_result
    mov dl, 'O'        ; If odd, change to 'O'

show_result:
    mov ah, 02h
    int 21h            ; Show E or O

    ; Exit
    mov ah, 4Ch
    int 21h

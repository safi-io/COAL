[org 0x0100]

section .data
    numbers db 10, 20, 30, 40, 50
    count db 5
    sum db 0

section .text
    main:
        mov si, 0 
        mov al, 0
        mov cl, [count]

    loop_start:
        add al, [numbers + si]
        inc si
        dec cl
        jnz loop_start

        mov [sum], al

        mov ax, 0x4c00
        int 0x21








Multiply two 8-bit numbers using shift-and-add method:

Multiplier: BL = 0FEh (254 in decimal)

Multiplicand: DL = 20h (32 in decimal)

Step-by-step:
Initialize:

AX = 0 → Result register

CX = 8 → We loop 8 times (for 8 bits of the multiplier)

BL = 0FEh → Multiplier

DL = 20h → Multiplicand

Loop (8 times):

TEST BL, 1 → Check if LSB of BL is 1

If yes: ADD AX, DX → Add current multiplicand to result

SHR BL, 1 → Shift multiplier right (to process next bit)

SHL DX, 1 → Double the multiplicand (to match binary position)

LOOP multiply_loop → Decrease CX and repeat

Exit:

INT 21h with AH = 4Ch → Clean DOS program exit

This is equivalent to binary multiplication logic — for every 1 bit in the multiplier, you add the multiplicand shifted by its bit position.



safi
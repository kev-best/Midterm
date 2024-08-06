section .text               ; Code section
    global _start           ; Declare the entry point globally

_start:
    ; Load values of var1 and var2
    mov eax, [var1]         ; Load the value of var1 into eax
    add eax, 1              ; Increment eax (equivalent to INC)
    add eax, [var2]         ; Add the value of var2 to eax

    ; Multiply eax by the value in var3
    mov ebx, [var3]         ; Load the value of var3 into ebx
    imul eax, ebx           ; Multiply eax by ebx (result in eax)

    ; Store the result in var4
    mov [var4], eax         ; Store the result in var4

    ; Perform a division (var4 / var3)
    mov eax, [var4]         ; Load the value of var4 into eax
    mov edx, 0              ; Clear edx for the division
    div ebx                 ; Divide eax by ebx (quotient in eax, remainder in edx)

    ; Store the division result in var5
    mov [var5], eax         ; Store the quotient in var5

    ; Exit the program
    mov eax, 1              ; System call number for exit
    int 0x80                ; Interrupt to make the system call

section .data               ; Data section
var1:   dd 5                ; Define var1 with value 5
var2:   dd 2                ; Define var2 with value 2
var3:   dd 3                ; Define var3 with value 3

section .bss                ; Uninitialized data section
var4:   resd 1              ; Reserve space for var4 (4 bytes)
var5:   resd 1              ; Reserve space for var5 (4 bytes, for division result)


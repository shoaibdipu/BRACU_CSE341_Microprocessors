; CSE341, Lab 05, Task 05
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    pkey db "press any key...$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    ; Task 05 : Write a program to display the extended ASCII characters (ASCII codes 80h to FFh). Display 10 characters per line, separated by blanks. Stop after the extended characters have been displayed once.
    
    mov bx, 80H
    mov cl, 0
    
    repeat:
    cmp cl, 10
    je newline
    inc cl
    
    mov ah, 2
    mov dx, bx
    int 21h
    
    inc bx
    
    cmp bx, 0ffH
    je exit
    
    jmp repeat
    
    newline:
    ;printing newLine
    mov dl, 0AH
    mov ah, 2
    int 21h
    
    ;printing creg return
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov cl, 0
    
    jmp repeat
    
    exit:

ends

end start ; set entry point and stop the assembler.

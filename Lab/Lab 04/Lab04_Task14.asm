; CSE341, Lab 04, Task 14
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    days28 db "28 days$"    
    days30 db "30 days$"    
    days31 db "31 days$"
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

    ; add your code here
    mov ah, 1
    int 21h
    sub al, 48
    
    cmp al, 1
    je day31
    
    cmp al, 2
    je day28
    
    cmp al, 3
    je day31
    
    cmp al, 4
    je day30
    
    cmp al, 5
    je day31
    
    cmp al, 6
    je day30
    
    cmp al, 7
    je day31
    
    cmp al, 8
    je day31
    
    cmp al, 9
    je day30
    
    cmp al, 17 ; for the value of 10
    je day31
    
    cmp al, 18 ; for the value of 11
    je day30
    
    cmp al, 19 ; for the value of 12
    je day31
    jmp exit
    
    day28:
    ;printing newLine
    mov dl, 0AH
    mov ah, 2
    int 21h
    
    ;printing creg return
    mov dl, 13
    mov ah, 2
    int 21h
    
    ;printing output
    mov ah, 9
    lea dx, days28
    int 21h
    jmp exit
    
    day30:
    ;printing newLine
    mov dl, 0AH
    mov ah, 2
    int 21h
    
    ;printing creg return
    mov dl, 13
    mov ah, 2
    int 21h
    
    ;printing output
    mov ah, 9
    lea dx, days30
    int 21h
    jmp exit
    
    
    day31:
    ;printing newLine
    mov dl, 0AH
    mov ah, 2
    int 21h
    
    ;printing creg return
    mov dl, 13
    mov ah, 2
    int 21h
    
    ;printing output
    mov ah, 9
    lea dx, days31
    int 21h
    jmp exit
    
    
    exit:
            
    ; exit to operating system.
    
ends

end start ; set entry point and stop the assembler.

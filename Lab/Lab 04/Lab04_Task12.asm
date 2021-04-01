; CSE341, Lab 04, Task 12
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    
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
    
    cmp al, 0
    je printi
    
    cmp al, 1
    je printi
    
    cmp al, 2
    je printi
    
    cmp al, 3
    je printi
    
    cmp al, 4
    je printk
    
    cmp al, 5
    je printk
    
    cmp al, 6
    je printk
    
    cmp al, 7
    je printl
    
    cmp al, 8
    je printl
    
    cmp al, 9
    je printl
    
    cmp al, 17 ; for the value of 10
    je printm
    jmp exit
    
    printi:
    mov dl, 069H
    mov ah, 2    
    int 21h
    jmp exit
    
    printk:
    mov dl, 06BH
    mov ah, 2    
    int 21h
    jmp exit
    
    printl:
    mov dl, 06CH
    mov ah, 2     
    int 21h
    jmp exit
    
    printm:
    mov dl, 06DH
    mov ah, 2    
    int 21h
    jmp exit
    
    exit:
    
    
    ; exit to operating system.
    
ends

end start ; set entry point and stop the assembler.

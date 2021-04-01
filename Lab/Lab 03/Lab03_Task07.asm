; CSE341, Lab 03, Task 07
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    s1 db "ENTER A HEX DIGIT: $" 
    s2 db "IN DECIMAL IT IS: $"
   
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
    
    lea dx, s1
    mov ah, 9
    int 21h
    
    mov ah,1 
    int 21h
    mov bh , al
    
    mov dl, 0AH
    mov ah , 2
    int 21h
    mov dL,0DH 
    int 21h 
    mov dL,0AH 
    int 21h
    
    lea dx, s2
    mov ah, 9
    int 21h
    
    mov ah , 2
    mov dl , 31h 
    int 21h
     
    mov ah , 2
    sub bh , 11h
    mov dl , bh
    int 21h        
    
ends

end start ; set entry point and stop the assembler.

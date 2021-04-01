; CSE341, Lab 03, Task 06
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    str db "ENTER THREE INITIALS: $"
    
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
    
    lea dx, str
    mov ah, 9
    int 21h
    
    mov ah,1 
    int 21h
    mov bh , al
    
    mov ah,1 
    int 21h
    mov bl , al
    
    mov ah,1 
    int 21h
    mov cl, al
    
    mov dl, 0AH
    mov ah , 2
    int 21h
    mov dL,0DH 
    int 21h 
    mov dL,0AH 
    int 21h 
    
    mov dl,bh
    mov ah,2
    int 21h
    
    mov dl, 0AH
    mov ah , 2
    int 21h
    mov dL,0DH 
    int 21h 
    mov dL,0AH 
    int 21h 
    
    mov dl,bl
    mov ah,2
    int 21h 
    
    mov dl, 0AH
    mov ah , 2
    int 21h
    mov dL,0DH 
    int 21h 
    mov dL,0AH 
    int 21h 
    
    mov dl,cl
    mov ah,2
    int 21h

ends

end start ; set entry point and stop the assembler.

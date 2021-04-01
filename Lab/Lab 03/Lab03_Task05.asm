; CSE341, Lab 03, Task 05
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    s1 db "THE SUM OF $"
    s2 db " AND $"
    s3 db " IS $"
    
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
     
    MOV DL, 03FH       
    mov ah , 2
    INT 21h   

    mov ah,1
    int 21h
    mov cl , al
    mov bl, cl 
    
    mov ah,1
    int 21h
    mov ch , al

    mov dl , cl
    add cl, ch
    sub cl, 030h
    
    mov dl, 0AH
    mov ah , 2
    int 21h 
    
    mov dL,0DH 
    int 21h 
    mov dL,0AH 
    int 21h 
    
    lea dx, s1
    mov ah, 9
    int 21h
   
    mov dl,bl
    mov ah,2
    int 21h
    
    lea dx, s2
    mov ah, 9
    int 21h
    
    mov dl,ch
    mov ah,2
    int 21h 
    
    lea dx, s3
    mov ah, 9
    int 21h
    
    mov dl,cl
    mov ah,2
    int 21h   
    
ends

end start ; set entry point and stop the assembler.

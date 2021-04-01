; CSE341, Lab 04, Task 07
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    o db "ODD$"
    e db "EVEN$"
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
    
    ; Task 07 : 
    ; Write an assembly program to check whether a number is even or odd. 
    
    mov ah, 1
    int 21h
    mov ax, al
    mov bl, 2
     
    cmp al, 0
    je dispEven
    
    div bl
    cmp ah, 0
    je dispEven
    LEA DX, o
        mov AH, 9
        int 21h
        jmp exit
    
    dispEven:
        LEA DX, e
        mov AH, 9
        int 21h    
        
    exit:
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.

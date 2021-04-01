; CSE341, Lab 03, Task 03
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

    ; add your code here
    
	; Task 03.a : Read a character, and display it at the next position on the same line. 
	
    mov ah,1 
    int 21h 
    
    mov dl,al 
    mov ah,2  
    int 21h 
    
    mov dl, 0AH
    mov ah,2 
    int 21h  
    mov dl, 13
    int 21h
    
    ; Task 03.b : Read an uppercase letter (omit error checking), and display it at the next position on the same line in lower case.
    
    mov ah,1 
    int 21h 
    mov bl, al
    
    add bl, 32    
    mov dl,bl 
    mov ah,2  
    int 21h 
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.

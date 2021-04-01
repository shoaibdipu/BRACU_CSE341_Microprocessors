; CSE341, Lab 03, Task 04
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
	
    ; Task 04 : Read an uppercase letter (omit error checking), and display it at the next position on the next line in lower case.
    
    mov ah,1
    int 21h
    mov cl , al
     
    mov dl, 0AH
    mov ah , 2
    int 21h  
    
    mov bl, cl
    add bl, 32
  
    mov dl,bl 
    mov ah,2  
    int 21h 

    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.

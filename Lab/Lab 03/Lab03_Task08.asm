; CSE341, Lab 03, Task 08
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    s db '**********',0DH,0AH,'$'
    
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
    
	; Task 08 : Write a program to display a 10 x 10 solid box of asterisks.
	
    lea dx, s
    mov ah, 9
    
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
     
ends

end start ; set entry point and stop the assembler.

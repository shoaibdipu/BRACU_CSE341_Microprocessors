; CSE341, Lab 08, Task 01
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482.

data segment
    ; add your data here!
    m db "Eagle Eye$"
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
            
    StringDisp MACRO a1 
    mov ah, 9
    lea dx, a1
    int 21h
    ENDM
    
    
    StringDisp m
    
    
    
    
    
    ; exit to operating system.
    
ends

end start ; set entry point and stop the assembler.

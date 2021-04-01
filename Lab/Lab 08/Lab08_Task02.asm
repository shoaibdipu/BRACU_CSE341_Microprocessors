; CSE341, Lab 08, Task 02
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
            
    Factorial MACRO a1
    mov al, a1
    mov bl, a1
   
   
    begin:    
    cmp a1, 1h
    jle exit  
    dec bl
    mul bl
    dec a1
    jmp begin
    
    
    
    
    exit:
    
    mov dx, ax
    mov ah, 2
    int 21h
        
    ENDM
    
    mov ch, 1h
    Factorial ch
            
   
   
    
    
    ; exit to operating system.
   
ends

end start ; set entry point and stop the assembler.

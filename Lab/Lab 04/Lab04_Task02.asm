; CSE341, Lab 04, Task 02
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
    
    ; Task 02 : 
    ; Suppose AL and BL contain extended ASCII characters. 
    ; Display the one that comes first in the character sequence.
    
    mov ah, 1
    int 21h
    mov cl, al
    
    mov ah, 1
    int 21h
    mov ch, al
    
    cmp cl, ch
    jle if_
    jmp else_
    
    if_:  
        mov dl, cl   
        jmp display_
		
    else_:   
        mov dl, ch
		
    display_:
        mov ah, 2
        int 21h  
            
    lea dx, pkey
    mov ah, 9
    int 21h        ; output string at ds:dx
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.

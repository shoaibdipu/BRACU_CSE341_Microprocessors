; CSE341, Lab 06, ClassTask 02
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    x db 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
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

    ; ClassTask 02 : Repeat Problem 1 with x = x-3; increment now.
    
    mov si, 14    
    mov ah, 2
    
    begin:
    cmp x[si], 0
    jle exit    
    mov dl, x[si]
    add dl, 30h    
    int 21h
    sub si, 3
    jmp begin
   
    exit:
    
    
                
    ; exit to operating system.
    
ends

end start ; set entry point and stop the assembler.

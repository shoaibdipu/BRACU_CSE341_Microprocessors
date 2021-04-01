; CSE341, Lab 07, Task 05
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
    
    mov ax, 123
    
    mov bl, 100
    
    div bl
    
    mov ch, ah
    mov ah, 0
    push ax
    
    mov al, ch
    
    mov bl, 10 
    
    div bl
    
    mov dh, ah
    mov ah, 0
    push ax
    
    mov al, dh
    mov ah, 0
    
    push ax
    
    mov cx, 3
    mov ah, 2
    
    
    begin:
    pop dx
    add dx, 48
    int 21h
    loop begin
    
    exit:
    
    
    
    
    
    
    
            
    ; exit to operating system.
    
ends

end start ; set entry point and stop the assembler.

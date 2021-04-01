; CSE341, Lab 07, Task 04
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    x db 1,2,3,4,5
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
    
    mov cx, 5
    mov si, 0
    
    begin:
    mov dl, x[si]
    mov dh, 0
    push dx
    inc si
    loop begin
    
    
    mov cx, 5
    mov si, 0
    
    begin2:
    pop dx
    add dl, 30h
    mov dh, 0
    mov ah, 2
    int 21h
    loop begin2
    
              
    
    exit:            
        
    ; exit to operating system.
    
ends

end start ; set entry point and stop the assembler.

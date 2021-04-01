; CSE341, Lab 06, ClassTask 04
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    x db 5 dup<?>
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

    ; ClassTask 04 : By using the code of Problem 2, print the name in reverse order.
	
	
    ;input
         
             
    mov ah, 1
    mov si, 0
    
    
    
    begin:
    cmp si, 5
    jge begin2
    int 21h
    mov x[si], al
    add si, 1
    loop begin
    
    
    begin2:
    ;printing newLine
    mov dl, 0AH
    mov ah, 2
    int 21h
    
    ;printing creg return
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov ah, 2
    mov si, 4
    jmp begin3
    
    begin3:
    cmp si, 0
    jl exit
    
    mov dl, x[si]
    
    int 21h
    sub si, 1
    loop begin3        
              
    exit:
                
    ; exit to operating system.
    
ends

end start ; set entry point and stop the assembler.

; CSE341, Lab 06, HomeTask 01
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    a dw ?
    x dw a dup<?>
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

    ; HomeTask 01 : Take input the length of the user’s name. Then, take the name as input, and then display.
	
	
    ;input
    
    mov ah, 1
    int 21h  
    mov ah, 0
    sub al, 30h
    mov a, ax
         
             
    mov ah, 1
    mov si, 0
    
    
    
    
    
    begin:
    cmp si, a
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
    mov si, 0
    jmp begin3
    
    begin3:
    cmp si, a
    jge exit
    
    mov dl, x[si]
    
    int 21h
    add si, 1
    loop begin3        
              
    exit:
                
    ; exit to operating system.
    
ends

end start ; set entry point and stop the assembler.

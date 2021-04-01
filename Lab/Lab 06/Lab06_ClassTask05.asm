; CSE341, Lab 06, ClassTask 05
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

    ; ClassTask 05 : Take an array of size 5. Store random numbers. Then, take two more inputs from the user. First input being an index, i, of the array, the second being a random number, x. After this, add the given input, x, to the value of index, i, of the array.
	
	
    mov cx, 5
    mov ah, 1
    mov si, 0
    
    begin:
    int 21h
    mov x[si], al
    add si, 1
    loop begin
    
    
    mov si, 0
    
    mov ah, 1
    int 21h
    sub al, 30h
    
    mov ah, 0
    
    
    mov si, ax  
    
    
    mov ah, 1
    int 21h
    sub al, 30h
    mov bl, al
    
    
    add x[si], bl
    
    
    ;printing newLine
    mov dl, 0AH
    mov ah, 2
    int 21h
    
    ;printing creg return
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov dl, 0
    mov cx, 5
    mov ah, 2
    mov si, 0
    
    begin2:
    mov dl, x[si]
    
    int 21h
    add si, 1
    loop begin2  
    
        
    ; exit to operating system.
    
ends

end start ; set entry point and stop the assembler.

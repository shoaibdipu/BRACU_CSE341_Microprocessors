; CSE341, Lab 05, Task 06
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    m db "ENTER A HEX DIGIT: $"
    n db "IN DECIMAL IT IS $"
    o db "DO YOU WANT TO DO IT AGAIN? $"
    p db "ILLEGAL CHARACTER-ENTER 0..9 OR A..F: $"
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

    ; Task 06
    
    begin:
    mov ah, 9
    lea dx, m 
    int 21h
    
    begin2:
    mov ah, 1
    int 21h
    mov bl, al
    
    ; printing new line 
    mov dl, 0AH
    mov ah, 2
    int 21h
    
    ; printing creg return
    mov dl, 13
    mov ah, 2
    int 21h
    
    cmp bl, 30h
    je print
    
    cmp bl, 31h
    je print
    
    cmp bl, 32h
    je print
    
    cmp bl, 33h
    je print
    
    cmp bl, 34h
    je print
    
    cmp bl, 35h
    je print
    
    cmp bl, 36h
    je print
    
    cmp bl, 37h
    je print
    
    cmp bl, 38h
    je print
    
    cmp bl, 39h
    je print
    
    cmp bl, 41h
    je print10
    
    cmp bl, 42h
    je print11
    
    cmp bl, 43h
    je print12
    
    cmp bl, 44h
    je print13
    
    cmp bl, 45h
    je print14
    
    cmp bl, 46h
    je print15
    
    jmp printe
    
    
    printe:
    mov ah, 9
    lea dx, p
    int 21h
    jmp begin2
    
    print:
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, bl
  
    mov ah, 2
    int 21h
    jmp next
    
    print10:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 30h
    mov ah, 2
    int 21h
    
    jmp next
            
    print11:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    
    jmp next
    
    print12:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 32h
    mov ah, 2
    int 21h
    
    jmp next
    
    print13:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 33h
    mov ah, 2
    int 21h
    
    jmp next
    
    print14:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 34h
    mov ah, 2
    int 21h
    
    jmp next
    
    print15:        
    mov ah, 9
    lea dx, n
    int 21h
    mov dl, 31h
    mov ah, 2
    int 21h
    mov dl, 35h
    mov ah, 2
    int 21h
    
    jmp next
    
    
    next:
    ;printing new line 
    mov dl, 0AH
    mov ah, 2
    int 21h
    
    ;printing creg return
    mov dl, 13
    mov ah, 2
    int 21h
    
    mov ah, 9
    lea dx, o
    int 21h
    mov ah, 1
    int 21h
    
    mov cl, al
    
    
    ;printing newLine
    mov dl, 0AH
    mov ah, 2
    int 21h
    
    ;printing creg return
    mov dl, 13
    mov ah, 2
    int 21h
    
    
    cmp cl, 'y'
    je begin
    cmp cl, 'Y'
    je begin
    jmp exit
    
    exit:
            
   
ends

end start ; set entry point and stop the assembler.

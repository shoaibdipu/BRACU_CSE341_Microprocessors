; CSE341, Lab 04, Task 09
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    divisible db "Divisible by 5 and 11 ...$"
    end db "The END$"
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
                    
    mov cx, 50 ; the number  
    mov bh, 5  ; 5
    mov bl, 11 ; 11
    
    ;divisible 5
    mov ax, cx
    div bh
    cmp ah, 0
    je multiple5
    jmp exit
    
    
    ;divisible 11
    multiple5:
    mov ax, cx 
    div bl
    cmp ah, 0               
    je multiple5and11
    jmp exit                        
    
    ;print
    multiple5and11:
    mov ah, 9
    lea dx, divisible
    int 21h
    jmp exit
                    
                    
    exit:
    mov ah, 9
    lea dx, end
    int 21h                
                    
                    
    
    ; exit to operating system.
      
ends

end start ; set entry point and stop the assembler.

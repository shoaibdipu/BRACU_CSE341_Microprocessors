; CSE341, Lab 04, Task 11
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    yes db "Y$"
    no db "N$"
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
    
    mov bh, 3
    mov ch, 2
    mov dh, 4
    
    ;comparing bh, ch
    cmp bh, ch
    jg bhbig 
    jmp chbig
    
    ;comparing bh, dh
    bhbig:
    cmp bh, dh
    jg bhbig2
    jmp dhbig
    
    ;comparing ch, dh
    chbig:
    cmp ch, dh
    jg chbig2
    jmp dhbig
    
    ;varifying triangle 
    bhbig2:
    add ch, dh
    cmp ch, bh
    jg printy
    jmp printn
    
    ;varifying triangle
    chbig2:
    add bh, dh
    cmp bh, ch
    jg printy
    jmp printn
    
    ;varifying triangle
    dhbig:
    add bh, ch
    cmp bh, dh
    jg printy
    jmp printn
    
    
    ;printing Y
    printy:
    mov ah, 9
    lea dx, yes
    int 21h
    jmp exit
    
    ;printing N
    printn:
    mov ah, 9
    lea dx, no
    int 21h
    
    exit:
    
    
    
    
    
    
    
    
    
    ; exit to operating system.
        
ends

end start ; set entry point and stop the assembler.

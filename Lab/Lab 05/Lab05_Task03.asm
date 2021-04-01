; CSE341, Lab 05, Task 03
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

    ; Task 03 : Read a five character password and overprint it by executing a carriage return and displaying five X's. You need not store the input characters anywhere.
    
    mov bl, 0 
    mov cl, 0

    begin: 
    cmp bl, 5
    jge second
    mov ah, 1
    int 21h
    inc bl
    jmp begin
    
    second:
    mov ah, 2
    mov dl, 0DH
    int 21h
    
    third:
    cmp cl, 5
    jge end    
    mov ah, 2
    mov dl, 58H
    int 21h
    inc cl
    jmp third
    
    end:
    
ends

end start ; set entry point and stop the assembler.

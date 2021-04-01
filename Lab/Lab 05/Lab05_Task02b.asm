; CSE341, Lab 05, Task 02b
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

    ; Task 02a : Write a sequence of instructions to do each of the following: b. Put the sum 100 + 95 + 90 + ... + 5 in AX.

    mov bx, 100
    mov ax, 0
    
    begin:
    cmp bx, 5
    jl end
    add ax, bx
    sub bx, 5
    jmp begin
    
    end:
    
    mov cx, ax
    
    mov dl, ch
    mov ah, 2 
    int 21h
    mov dl, cl
    mov ah, 2
    int 21h 
    
ends

end start ; set entry point and stop the assembler.

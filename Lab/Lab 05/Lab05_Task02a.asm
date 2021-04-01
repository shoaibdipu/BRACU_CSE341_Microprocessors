; CSE341, Lab 05, Task 02a
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

    ; Task 02a : Write a sequence of instructions to do each of the following: Put the sum of 1 + 4 + 7+ .. + 148 in AX.
    
    mov bx, 1
    mov ax, 0
    
    begin:
    cmp bx, 148
    jg end
    add ax, bx
    add bx, 3
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

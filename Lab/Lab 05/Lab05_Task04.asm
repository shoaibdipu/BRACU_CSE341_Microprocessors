; CSE341, Lab 05, Task 04
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

    ; Task 04
	
    mov cx, 0 ; product
    mov ax, 3 ; m
    mov bx, 2 ; n
    
    repeat:
    add cx, ax
    dec bx

    cmp bx, 0
    jne repeat

    mov ah, 2
    mov dl, cl
    add dl, 48
    int 21h
   
ends

end start ; set entry point and stop the assembler.

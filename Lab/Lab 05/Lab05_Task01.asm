; CSE341, Lab 05, Task 01
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482


data segment
    ; add your data here!
    p db "*$"
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

    ; Task 01 : Write a count-controlled loop to display a row of 80 stars.
    
    mov cx, 80
    
    begin:
    mov ah, 9
    lea dx, p
    int 21h
    loop begin
    
ends

end start ; set entry point and stop the assembler.


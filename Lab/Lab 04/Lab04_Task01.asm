; CSE341, Lab 04, Task 01
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

    ; add your code here
    
    ; Task 01 : Take a number in AX, and if it.s a negative number, replace it by 5.
    
    mov ax, 2
    neg ax
    
    cmp ax, 0
    jl mycode
    jmp exit
    
    mycode:
    mov ax, 5
    
    exit: 
    
            
    lea dx, pkey
    mov ah, 9
    int 21h        ; output string at ds:dx
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.

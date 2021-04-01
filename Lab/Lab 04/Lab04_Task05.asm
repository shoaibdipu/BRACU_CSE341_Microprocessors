; CSE341, Lab 04, Task 05
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
    
    ; Task 05 : 
    ; Read a character, and if it's an uppercase letter, display it. 
    
    mov ah, 1
    int 21h
    
    cmp al, 61h
    jl print
    jmp exit
    
    print:
        mov ah, 1 
        mov dl, al
        int 21h 
        jmp exit
        
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

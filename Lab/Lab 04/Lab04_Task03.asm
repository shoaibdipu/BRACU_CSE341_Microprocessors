; CSE341, Lab 04, Task 03 
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
    
    ; Task 03 : 
    ; If AX contains a negative number, put -1 in BX; 
    ; if AX contains 0, put 0 In BX; 
    ; if AX contains a positive number, put 1 in BX. 
    
    mov ax, 4
    cmp ax, 0
    jl ng
    je eql
    jg grt 
    
    ng:
    mov bx, -1
    neg bx
    jmp exit
    
    eql:
    mov bx, 0
    jmp exit
    
    grt: 
    mov bx, 1
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

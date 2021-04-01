; CSE341, Lab 04, Task 04
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
    
    ; Task 04 : 
    ; If AL contains 1 or 3, display “o”; if AL contains 2 or 4 display "e". 
    
    mov al, 1
    ;mov al, 3
    ;mov al, 2
    ;mov al, 4
    
    cmp al, 1
    je dispO
     
    cmp al, 3
    je dispO
    
    cmp al, 2
    je dispE 
    
    cmp al, 4
    je dispE
    
    dispO:
        mov ah, 2
        mov dl, 'o'
        int 21h
        jmp exit:
    
    dispE:
        mov ah, 2
        mov dl, 'e'
        int 21h
        jmp exit: 
        
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

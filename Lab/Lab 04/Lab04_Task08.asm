; CSE341, Lab 04, Task 08
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    v db "VOWEL$"
    c db "CONSTANT$"
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
    
    ; Task 08 : 
    ; Write a program to input any alphabet and check whether it is vowel or consonant. 
    
    mov ah, 1
    int 21h
    
    cmp al, 'a'
    je printV
    
    cmp al, 'A'
    je printV
    
    cmp al, 'e'
    je printV 
    
    cmp al, 'E'
    je printV
    
    cmp al, 'i'
    je printV 
    
    cmp al, 'I'
    je printV
    
    cmp al, 'o'
    je printV
    
    cmp al, 'O'
    je printV
    
    cmp al, 'u'
    je printV
    
    cmp al, 'U'
    je printV  
    
    LEA DX, c
    mov AH, 9
    int 21h
    jmp exit
    
    printV:
        LEA DX, v
        mov AH, 9
        int 21h
        jmp exit  
    
    exit:
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.


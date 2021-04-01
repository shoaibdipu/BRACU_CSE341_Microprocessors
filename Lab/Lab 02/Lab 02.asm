; CSE341, Lab 02
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
    
    ; Task 01
    
    mov ax, 5
    mov bx, ax
    
    ; Task 02
    
    mov ax, 2
    mov bx, 3
    mov cx, ax
    mov ax, bx
    mov bx, cx 
    
    ; Task 03 : Add two numbers using two registers. 
    
    mov ax, 2
    mov bx, 3
    add ax, bx
    
    ; Task 04 : Subtract two numbers using two registers.
    
    mov ax, 3
    mov bx, 2
    sub ax, bx
    
    ; Task 05 : Swap two numbers using ADD/SUB instructions only.
    
    mov ax, 3
    mov bx, 2
    add ax, bx
    neg bx
    add bx, ax
    sub ax, bx
    
    ; Task 06.01 : A = B - A 
    
    mov ax, 2
    mov bx, 3
    neg ax
    add ax, bx
    
    ; Task 06.02 : A = -(A + 1)
      
    mov ax, 2
    add ax, 1
    neg ax
    
    ; Task 06.03 : C = A + (B + 1); use inc
    
    mov ax, 2
    mov bx, 3
    mov cx, 4
    inc bx
    add ax, bx
    mov cx, ax
    
    ; Task 06.04 : A = B – (A – 1); use dec 
     
    mov ax, 2
    mov bx, 3
    dec ax
    sub bx, ax
    mov ax, bx
    
    ; Task 07.01 : 1. X * Y
    
    mov al, 2
    mov bl, 3
    mul bl
    
     
    ; Task 07.02 : 2. X / Y 
    
    mov al, 3
    mov bl, 2
    div bl
    
    ; Task 07.03 : 3. X * Y / Z
    
    mov al, 2 
    mov bl, 2 
    mul bl
    mov bl, 5
    div bl  


    ; Task 11 : (1 + 2) * (3 - 1) / 5 + 3 + 2 - (1 * 2) 
    
    mov al, 1
    mov bl, 2
    add al, bl
    
    mov cl, 3
    mov dl, 1
    sub cl, dl
    
    mov bl, cl
    mul bl
    
    mov bl, 5
    div bl
    
    mov bl, 3
    add al, bl
    
    mov bl, 2
    add al, bl
    
    mov cl, al
    
    mov al, 1
    mov bl, 2
    mul bl
    
    mov dx, ax
    mov ax, cx
    mov bx, dx
    sub ax, bx
    
            
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

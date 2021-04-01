; CSE341, Lab 03, Task 02
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    pkey db "press any key...$" 
    a db "Enter First Value:$"
    b db "Enter Second Value:$"
    c db "Summation:$"
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
          
    ; Task 02 : Perform addition/subtraction/division/multiplication by taking inputs from the user.
	
    lea dx, a
    mov ah, 9
    int 21h          
    
    mov ah,1 
    int 21h 
    mov bh , al  
    
    mov dl, 0AH
    mov ah,2 
    int 21h  
    mov dl, 13
    int 21h
    
    lea dx, b
    mov ah, 9
    int 21h        ; output string at ds:dx   
    
    mov ah,1 
    int 21h 
    mov bl , al 
    
    sub bh , 030h
    sub bl , 030h   
    
    add bh , bl   
    add bh , 030h
    
    mov dl, 0AH
    mov ah,2 
    int 21h  
    mov dl, 13
    int 21h
    
    lea dx, c
    mov ah, 9
    int 21h  
    
    mov dl,bh 
    mov ah,2  
    int 21h 
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.

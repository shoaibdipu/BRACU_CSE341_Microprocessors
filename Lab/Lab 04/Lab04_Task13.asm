; CSE341, Lab 04, Task 13
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    saturday db "Saturday$"
    sunday db "Sunday$"
    monday db "Monday$"
    tuesday db "Tuesday$"
    wednesday db "Wednesday$"
    thursday db "Thursday$"
    friday db "Friday$"
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
   
    mov ah, 1
    int 21h
    sub al, 030h
    
    cmp al, 1
    je saturday2
    
    cmp al, 2
    je sunday2
    
    cmp al, 3
    je monday2
    
    cmp al, 4
    je tuesday2
    
    cmp al, 5
    je wednesday2
    
    cmp al, 6
    je thursday2
    
    cmp al, 7
    je friday2
    
    
    saturday2:
    mov ah, 9
    lea dx, saturday
    int 21h
    jmp exit
    
    sunday2:
    mov ah, 9
    lea dx, sunday
    int 21h
    jmp exit
    
    monday2:
    mov ah, 9
    lea dx, monday
    int 21h
    jmp exit
    
    tuesday2:
    mov ah, 9
    lea dx, tuesday
    int 21h
    jmp exit
     
    wednesday2:
    mov ah, 9
    lea dx, wednesday
    int 21h
    jmp exit
    
    thursday2:
    mov ah, 9
    lea dx, thursday
    int 21h
    jmp exit
    
    friday2:
    mov ah, 9
    lea dx, friday
    int 21h
    
    
   
   
    exit:
    
   
   
   
   
   
            
    
    ; exit to operating system.
        
ends

end start ; set entry point and stop the assembler.

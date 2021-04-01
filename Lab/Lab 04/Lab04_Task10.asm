; CSE341, Lab 04, Task 10
; Theory & Lab Section : 02
; Name : Shoaib Ahmed Dipu
; ID : 17101482

data segment
    ; add your data here!
    max db 0
    min db 0 
    
    
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
    mov bh, 2
    mov ch, 3
    mov dh, 4
    
    ; compare between bh, ch 
    cmp bh, ch
    jg yesbh
    jmp nobh
    
    ; bh greater than ch
    yesbh:
    mov max, bh
    mov min, ch
    cmp max, dh
    jg bhmax
    jmp bhmax2
    
    ; ch better than bh
    nobh:
    mov max, ch
    mov min, bh
    cmp max, dh
    jg bhmax
    jmp bhmax2
    
    ;bh is maximum
    bhmax:
    cmp min, dh
    jg minbh
    jmp print
    
    
    ;dh is maximum
    bhmax2:
    mov max, dh
    jmp print
    
    
    ; dh is minimum
    minbh:
    mov min, dh
    jmp print
    
    
    
    ;printing max
    print:
    mov ah, 2
    add max, 48
    mov dx, max
    int 21h
    
    ;printing min
    mov ah, 2  
    add min, 48
    mov dx, min
    int 21h 
     
    
    
    
      
                    
    
    ; exit to operating system.
      
ends

end start ; set entry point and stop the assembler.

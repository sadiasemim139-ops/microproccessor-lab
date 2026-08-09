.model small
.stack 100h 
.data
inputmsg db "input:$"
output db "output;$"
.code

main proc 
    mov ax, @data
    mov ds,ax
    
    mov dx, offset inputmsg
    mov ah,09h
    int 21h
      mov ah,2
    mov dl,10
    int 21h 
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al  
    
    mov ah,2
    mov dl,10
    int 21h  
    
    
    mov ah,2
    mov dl,13
    int 21h
            
            
        
    
      mov ah,1
    int 21h
    mov bh,al 
    
     
     mov ax, @data
    mov ds,ax
    
    mov dx, offset output
    mov ah,09h
    int 21h 
        
       mov ah,2
    mov dl,10
    int 21h
    mov ah,2
    mov dl,13
    int 21h 
    
    mov ah,2
    mov dl,bl
    int 21h  
    
     mov ah,2
    mov dl,10
    int 21h 
    
    
    mov ah,2
    mov dl,13
    int 21h
   
    
    
    mov ah,2
    mov dl,bh
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
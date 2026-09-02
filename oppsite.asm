
  
.model small
.stack 100h 
.data
inputmsg db "input:$"
output db "output:$"

.code    

main proc 
    mov ax, @data
    mov ds,ax
    
    mov dx, offset inputmsg
    mov ah,09h
    int 21h  
     
 
 mov ah,1
 int 21h 

cmp al,'a'
jbe check_upper  

 
sub al,32
jmp display

check_upper:
add al,32  
;mov bl,al

display:
mov bl,al



 mov ah,2
    mov dl,10
    int 21h 
    
    mov ah,2
    mov dl,13
    int 21h
            
            

mov dx,offset output
mov ah,09h
int 21h
        
        
mov dl,bl
mov ah,2
int 21h


mov ah,4ch
int 21h 






main endp
end main
    
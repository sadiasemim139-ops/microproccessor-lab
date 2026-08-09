.model small
.stack 100h 
.data
num1 db ?
num2 db ?
biyog db ? 
mult db ?
divv db ?
quot db ?
rem db ? 

.code

main proc 
    mov ax, @data
    mov ds,ax
    

    
    mov ah,1
    int 21h
    sub al,48
    mov num1,al 
    
    mov ah,1
    int 21h 
    sub al,48
    mov num2,al  
    
   mov al,num1
   sub al,num2
   add al,48
   mov biyog,al 
    
mov ah,2
mov dl, biyog
int 21h 

  





    
   mov al,num1 
   mov bl,num2
   mul bl
   add al,48
   mov mult,al 
    
mov ah,2
mov dl, mult
int 21h 



    
   mov al,num1 
   mov bl,num2 
   mov ah,0
   div bl 
   mov quot,al
   mov rem,ah
   
   add quot,48
   add rem, 48 
    
mov ah,2
mov dl, quot
int 21h     
     
mov ah,2
mov dl, rem
int 21h     
    
   
    main endp
end main   

;add 
;sub al,48
;al=al-48

;ADD al,48
 ;al= al+48
 
 ;al=num1
 ;add al,num2
 ;al= al+num2
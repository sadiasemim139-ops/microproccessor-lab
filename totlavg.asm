.model small
.stack 100h 
.data
num1 db ?
num2 db ? 
num3 db ? 
quot db ?
rem db ?


totalmarks db ? 
averg db ?

inputmsg1 db "subject1:$"   
inputmsg2 db "subject2:$"
inputmsg3 db "subject3:$"
totalmark db "totalmark:$"  
avrg db "avrg:$"

.code

main proc 
    mov ax, @data
    mov ds,ax 
    
    
        mov dx, offset inputmsg1
    mov ah,09h
    int 21h  
    
    
          mov ah,1
    int 21h
    sub al,48
    mov num1,al 
    
          mov ah,2
    mov dl,10
    int 21h
 
    mov ah,2
    mov dl,13
    int 21h
    
     
     
 
    
    
      mov ah,2
    mov dl,10
    int 21h
        
        mov dx, offset inputmsg2
    mov ah,09h
    int 21h  
    
        mov ah,1
    int 21h 
    sub al,48
    mov num2,al 
    
      mov ah,2
    mov dl,10
    int 21h 
    mov ah,2
    mov dl,13
    int 21h
    

    
    
    
        mov dx, offset inputmsg3
    mov ah,09h
    int 21h 
    
         mov ah,1
    int 21h 
    sub al,48
    mov num3,al    
    
      mov ah,2
    mov dl,10
    int 21h 
    mov ah,2
    mov dl,13
    int 21h 
    
     mov dx, offset totalmark
    mov ah,09h
    int 21h 
    
    
    
   mov al,num1  
   add al,num2  
   add al,num3
   add al,48
   mov totalmarks,al 
   
      mov ah,2
    mov dl,10
    int 21h 
    mov ah,2
    mov dl,13
    int 21h  
    
    
    
mov ah,2
mov dl, totalmarks
int 21h   
          
          
       mov ah,2
    mov dl,10
    int 21h 
    mov ah,2
    mov dl,13
    int 21h          
          
          
     
     mov dx, offset avrg
    mov ah,09h
    int 21h 
 
 
       mov ah,2
    mov dl,10
    int 21h 
    mov ah,2
    mov dl,13
    int 21h       
   
   mov al,totalmarks 
   sub al,48
   mov ah,0 
   mov bl,3
   div bl 
   mov  averg,al
   mov rem,ah
   add averg,48 
  
   
   
   
   
    
   
       

    
    
    
mov ah,2
mov dl, averg
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
 
 
 
 
 

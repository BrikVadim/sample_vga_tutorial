org     100h

mov     al, 12h 
int     10h

mov     cx, y + width
mov     dx, x     
mov     al, color
mov     ah, 0ch  
        
upper_line: 
        int     10h
    
        dec     cx
        cmp     cx, y
        jae     upper_line

mov     cx, y + width
mov     dx, x + height 
        
bottom_line: 
        int     10h
    
        dec     cx
        cmp     cx, y
        ja      bottom_line

mov     cx, y 
mov     dx, x + height  
        
left_line: 
        int     10h
    
        dec     dx
        cmp     dx, x
        ja      left_line 

mov     cx, y + width
mov     dx, x + height 
        
right_line: 
        int     10h
    
        dec     dx
        cmp     dx, x
        ja      right_line     

mov     ah,00
int     16h			

ret

width   equ 25
height  equ 25

x       equ 25
y       equ 25    
                      
color   equ 15

end

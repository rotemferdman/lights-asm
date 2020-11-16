org 100h
mov ax, 00000001001001001b ;up and fron are red light, siudes are green
out 4, ax                                                             

main:
PRINTN "CHOOSE A LIGHT - [1] FOR SIDES, [2] FOR UP/DOWN"   
mov ah, 1
mov al, 0
int 21h
sub al, 30h
cmp al, 1
jz side
jnz up    
inc cx     
loop main

side:
mov ax, 0000010001010001b ;up and fron are red light, siudes are green
out 4, ax              
PRINTN "THE SIDES HAVE ORANGE NOW"
mov ax, 0000100001100001b ;up and fron are red light, siudes are green
out 4, ax
PRINTN "THE SIDE CARS ARE NOW DRIVING. LET THEM BE, THEY ARE GREAT. LEAVE THEM ALONE!!!!!!!!!!!!!"
jmp main
 
 
 
up:
mov ax, 0000001010001010b ;up and fron are orenge light, siudes are red
out 4, ax  
PRINTN "THE FRONT HAVE ORANGE NOWWW!"
     
mov ax, 0000001100001100b ;up and fron are green light, siudes are red now
out 4, ax

PRINTN "THE FRONT CARS ARE NOW DRIVING. LET THEM BE, THEY ARE GREAT. LEAVE THEM ALONE!!!!!!!!!!!!!"
inc cx
jmp main



ret

include magshimim.inc
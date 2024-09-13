[org 0x0100]

; start of code 

mov  ax, [num1]         ;move 5 in ax
mov  bx, [num1+2]       ;move 10 in bs

add  bx, ax             ;store in bx =15
mov  ax, [num1+4]       ;move 15 

add  ax, bx             ;add constant 15 into the value of bx 
mov [num1+6],ax;

mov  ax, 0x4c00         ; exit .. 
int  0x21               ; .. is what the OS should do for me

num1:dw 5, 10 , 15,0
    

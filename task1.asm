[org 0x0100]

; start of code 

mov  ax, [num1]         ;move 5 in ax
mov  bx, [num2]         ;move 10 in bs

add  bx, ax             ; store inbx =15
mov  ax, [num3]         ;move 15 

add  ax, bx             ; add constant 15 into the value of bx 
mov [num4],ax;

mov  ax, 0x4c00         ; exit  
int  0x21               ; is what the OS should do for me

num1:dw 5
num2:dw 10
num3:dw 15
num4:dw 0

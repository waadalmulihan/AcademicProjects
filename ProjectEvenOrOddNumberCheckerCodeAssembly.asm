.MODEL SMALL

.DATA
msgInput DB 13, 10, 'Enter a digit from 0 to 9: $'
msgEven DB 13, 10, 'The number is EVEN.$'
msgOdd DB 13, 10, 'The number is ODD.$'

.CODE

.STARTUP

mov ah, 09h
lea dx, msgInput
int 21h


mov ah, 01h
int 21h 
sub al, '0' 


mov bl, al
and bl, 1 

cmp bl, 0
je PrintEven
jmp PrintOdd 

PrintEven:
mov ah, 09h
lea dx, msgEven
int 21h
jmp EndProgram

PrintOdd:
mov ah, 09h
lea dx, msgOdd
int 21h

EndProgram:
mov ax, 4C00h
int 21h

END
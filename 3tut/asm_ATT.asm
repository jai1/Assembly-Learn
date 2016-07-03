.global MulBy17     ;
.global Sub5x       ;   
.global AddInts     ;

.section .text
AddInts:
    movl %edi, %eax ;
    addl %esi, %eax ;
    addl %ecx, %eax ;
    addl %edx, %eax ;
    ret

MulBy17:
    movl %edi, %eax ;
    imull $17, %eax ;
    ret             ;
    
Sub5x:
    movl %edi, %eax ;
    imull $5, %esi  ;
    subl %esi, %eax ;
    ret             ;

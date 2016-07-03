.global MulBy17     ;
.global Sub5x       ;   
.global AddInts     ;
.global Negate	    ;
.global ReverseBits ;	    ;
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

Negate:
    movl %edi, %eax ;
    not %eax        ;
    add $1, %eax    ;
    ret             ;

ReverseBits:
    xor %rax, %rax   ;
    movl $0,%ebx     ;
    loop: 
    addl $1,%ebx     ;
    movb %dil, %cl   ; /* dil is the lower 8 bit of edi */
    andb $1, %cl     ; /* Mask out all but the first bit */
    orb %cl, %al;    ; /* Copy it to AL */ 
    shrb $1, %dil    ; /* shift dil to the next bit */
    shlb $1, %al     ; /* shit al to the left 1 bit */
    cmp $7, %ebx     ;
    jnz loop         ;
    ret		         ;

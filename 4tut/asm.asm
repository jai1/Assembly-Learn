global MulBy17		;
global Sub5x		; 
global AddInts		;
global Negate   	;
global ReverseBits	;
segment .text		; 
AddInts:		;
	mov eax, edi	; e used in x64 since we have int
	add eax, esi	; mnemonics destination, source
	add eax, ecx	;
	add eax, edx	;	
	ret	    	; return value is in eax

MulBy17:
	mov eax, edi	;
	imul eax, 17	; imul for signed multiplication
	ret		;

Sub5x:
	mov eax, edi	; 
	imul esi, 5	;
	sub eax, esi	;
	ret		;
Negate:
	mov eax, edi	;NOT X + 1 => 2's compliemnt of X
	not eax		;2's Compliment = -ve of number 	
	add eax,1	;
	ret		;
ReverseBits:
	or rax, rax	; clear rax
	mov cl, dil	; dil is the lower 8 bit of edi
	and cl, 1	; Mask out all but the first bit
	or al, cl	; Copy it to AL
	shr dil, 1	; shift dil to the next bit
	shl al, 1	; shit al to the left 1 bit
	
    mov cl, dil     ; dil is the lower 8 bit of edi
    and cl, 1       ; Mask out all but the first bit
    or al, cl       ; Copy it to AL
    shr dil, 1      ; shift dil to the next bit
    shl al, 1       ; shit al to the left 1 bit

    mov cl, dil     ; dil is the lower 8 bit of edi
    and cl, 1       ; Mask out all but the first bit
    or al, cl       ; Copy it to AL
    shr dil, 1      ; shift dil to the next bit
    shl al, 1       ; shit al to the left 1 bit

    mov cl, dil     ; dil is the lower 8 bit of edi
    and cl, 1       ; Mask out all but the first bit
    or al, cl       ; Copy it to AL
    shr dil, 1      ; shift dil to the next bit
    shl al, 1       ; shit al to the left 1 bit

    mov cl, dil     ; dil is the lower 8 bit of edi
    and cl, 1       ; Mask out all but the first bit
    or al, cl       ; Copy it to AL
    shr dil, 1      ; shift dil to the next bit
    shl al, 1       ; shit al to the left 1 bit

    mov cl, dil     ; dil is the lower 8 bit of edi
    and cl, 1       ; Mask out all but the first bit
    or al, cl       ; Copy it to AL
    shr dil, 1      ; shift dil to the next bit
    shl al, 1       ; shit al to the left 1 bit

    mov cl, dil     ; dil is the lower 8 bit of edi
    and cl, 1       ; Mask out all but the first bit
    or al, cl       ; Copy it to AL
    shr dil, 1      ; shift dil to the next bit
    shl al, 1       ; shit al to the left 1 bit

    mov cl, dil     ; dil is the lower 8 bit of edi
    and cl, 1       ; Mask out all but the first bit
    or al, cl       ; Copy it to AL

	ret

global MulBy17	;
global Sub5x	; 
global AddInts	;

segment .text	; 
AddInts:	;
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

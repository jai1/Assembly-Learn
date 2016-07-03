global GetValueFromASM ; export this funtion to be used by other programs

segment .data; segment for data

segment .bss; segment for uninitialized data

segment .text; segement for code
GetValueFromASM:
	mov rax, 46763; mov 46763 into rax; mov dst, src
	ret           ;
	 

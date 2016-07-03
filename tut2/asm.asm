

.section .data

.section .text
.global GetValueFromGAS

; # AT&T Syntax -  mnemonic source, destination
GetValueFromGAS:
	movq $25, %rax ;
	ret

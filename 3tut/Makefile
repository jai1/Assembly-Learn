all: runme runme_ATT

runme_ATT: main.cpp asm_ATT.o
	g++ main.cpp asm_ATT.o -o runme_ATT	

runme: main.cpp asm.o 
	g++ main.cpp asm.o -o runme
asm.o: asm.asm
	nasm -f elf64 asm.asm -o asm.o

asm_ATT.o: asm_ATT.asm
	as asm_ATT.asm -o asm_ATT.o

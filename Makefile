runme: main.cpp asm1.o
	g++ main.cpp asm1.o -o runme

asm1.o: asm1.asm
	nasm -f elf64 asm1.asm -o asm1.o

#makefile для hello.asm начало
app: app.o
	gcc -o app app.o -no-pie  
app.o:app.asm
	nasm -f elf64 -g -F dwarf app.asm -l app.lst
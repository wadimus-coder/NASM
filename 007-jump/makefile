jump.exe : jump.o
	gcc jump.o -o jump.exe -no-pie

jump.o :jump.asm
	nasm -felf64 jump.asm -o jump.o
clean :
	rm *.o  *.exe
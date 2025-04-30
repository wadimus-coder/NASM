
app.exe :app.o
	gcc app.o -o app.exe -no-pie
app.o : app.asm
	nasm -felf64 app.asm -o app.o
clean:
	rm *.exe *o
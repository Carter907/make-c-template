build: main.c
	mkdir build
	gcc -g -Wall -Werror -lm main.c
	mv a.out ./build

debug: clean build
	gdb ./build/a.out

run: clean build
	./build/a.out

clean:
	rm -rf ./build


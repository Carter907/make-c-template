build: main.c
	mkdir build
	gcc main.c
	mv a.out ./build

run: clean build
	./build/a.out

clean:
	rm -rf ./build


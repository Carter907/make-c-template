CC = gcc
CD = gdb

PROG_NAME = app

SOURCES = main.c

VER = c23

BUILD_DIR= ./build

CFLAGS = -std=$(VER) -g -Wall -Werror -Wconversion -fanalyzer -fsanitize=address,undefined,leak -fsanitize-trap=undefined

LIBS = 

run: build
	$(BUILD_DIR)/$(PROG_NAME)

build: $(SOURCES)
	mkdir -p $(BUILD_DIR)
	$(CC) -o $(PROG_NAME) $(CFLAGS) $(LIBS) $(SOURCES)
	mv $(PROG_NAME) $(BUILD_DIR) 

clean:
	rm -rf $(BUILD_DIR)

debug: build
	$(CD) $(BUILD_DIR)/$(PROG_NAME)

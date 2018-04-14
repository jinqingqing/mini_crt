#minicrt Makefile


SRC=$(wildcard *.c)
OBJ=$(patsubst %.c,%.o,$(SRC))

MKDIR=$(shell pwd)

LIBDIR=$(MKDIR)/../lib


INCLUDE=$(MKDIR)/../minicrt


OBJ_DIR=$(MKDIR)/../object
CFLAG=-ggdb -fno-builtin -nostdlib -fno-stack-protector

TARGET_DIR=$(MKDIR)/../target

main:$(OBJ) 
	#ar -rs $(LIBDIR)/minicrt.a $(OBJ_DIR)/*.o
	ld -static -e mini_crt_entry $(OBJ_DIR)/entry.o $(OBJ_DIR)/main.o $(LIBDIR)/minicrt.a -o $(TARGET_DIR)/main 

$(OBJ):%.o:%.c
	echo $(SRC)
	echo $(OBJ)
	echo $(MKDIR)
	echo $(LIBDIR)
	echo $(CRT_DIR)
	gcc -c $(CFLAG) $< -o $(OBJ_DIR)/$@ -I$(INCLUDE)
	
clean:
	rm $(TARGET_DIR)/*

#clean:
#	rm -rf $(LIBDIR)/minicrt.a $(OBJ_DIR)/*.o


#ar -rs minicrt.a malloc.o printf.o stdio.o string.o
#gcc -c -ggdb -fno-builtin -nostdlib -fno-stack-protector test.c
#ld -static -e mini_crt_entry entry.o main.o minicrt.a -o main
#cp test /

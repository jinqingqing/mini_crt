#minicrt Makefile

SRC=$(wildcard *.c)
OBJ=$(patsubst %.c,%.o,$(SRC))

MKDIR=$(shell pwd)

LIBDIR=$(MKDIR)/../lib


CRT_DIR=$(MKDIR)/../minicrt


OBJ_DIR=$(MKDIR)/../object
CFLAG=-ggdb -fno-builtin -nostdlib -fno-stack-protector
test:
	echo $(MKDIR)
minicrt.a:$(OBJ) 
	ar -rs $(LIBDIR)/minicrt.a $(OBJ_DIR)/*.o

$(OBJ):%.o:%.c
	echo $(SRC)
	echo $(OBJ)
	echo $(MKDIR)
	echo $(LIBDIR)
	echo $(CRT_DIR)
	gcc -c $(CFLAG) $< -o $(OBJ_DIR)/$@

clean:
	rm -rf $(LIBDIR)/minicrt.a $(OBJ_DIR)/*.o


#ar -rs minicrt.a malloc.o printf.o stdio.o string.o
#gcc -c -ggdb -fno-builtin -nostdlib -fno-stack-protector test.c
#ld -static -e mini_crt_entry entry.o test.o minicrt.a -o test
#cp test /

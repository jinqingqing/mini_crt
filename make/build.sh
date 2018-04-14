#!/bin/sh

set -x

SRC_DIR=`pwd`
SRC_DIR=$(pwd)
echo $SRC_DIR
MAIN_DIR=$SRC_DIR/../main
echo $MAIN_DIR
CRT_DIR=$SRC_DIR/../minicrt
OBJ=$SRC_DIR/../object

#set -x

#SOURCE_DIR=`pwd`

echo $1

if [ "$1" == "clean" ]; then
SRC_DIR=$(pwd)
cd $CRT_DIR
make clean
fi

if [ "$1" == "minicrt" ]; then
cd $CRT_DIR
SRC_DIR=$(pwd)
echo $SRC_DIR
make
fi

if [ "$1" == "main" ]; then
SRC_DIR=$(pwd)
cd $MAIN_DIR
make
fi

#gcc -c -fno-builtin -nostdlib -fno-stack-protector entry.c malloc.c stdio.c string.c printf.c
#ar -rs minicrt.a malloc.o printf.o stdio.o string.o

#gcc -c -ggdb -fno-builtin -nostdlib -fno-stack-protector test.c
#ld -static -e mini_crt_entry entry.o test.o minicrt.a -o test
#cp test /

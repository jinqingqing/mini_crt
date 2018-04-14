
SRC_DIR=$(shell pwd)
CRT_DIR=$(SRC_DIR)/minicrt
All:
	echo $(SRC_DIR)
	make test -f $(CRT_DIR)/Makefile


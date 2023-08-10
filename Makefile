# Compiler options
CC = gcc
CFLAGS = -Wall -Wextra -g

# Directories
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin

# Files
SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(SRC:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)
BIN = $(BIN_DIR)/main

# Rules
all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:

	rm -f $(OBJ) $(BIN)

.PHONY: all clean

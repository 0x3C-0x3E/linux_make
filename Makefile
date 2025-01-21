# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -g -I./src  # Add -I flag to specify the directory of header files

# Linker flags for static linking
LDFLAGS = -static -lSDL2 -lSDL2_image

# Source files (dynamically list all .c files in /src)
SRC = $(wildcard src/*.c) main.c  # Automatically add all .c files in /src

# Output executable
TARGET = my_program  # Replace with your desired output name

# Build rule
all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC) $(LDFLAGS)

# Clean rule
clean:
	rm -f $(TARGET)

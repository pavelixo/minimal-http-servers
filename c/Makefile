CC = gcc
CFLAGS = -Wall
TARGET = bin/server
SRCS = src/server.c

all: $(TARGET)

$(TARGET): $(SRCS) | bin
	$(CC) $(CFLAGS) $^ -o $@

bin:
	mkdir -p bin

clean:
	rm -f $(TARGET)
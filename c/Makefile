CC = gcc
CFLAGS = -Wall
TARGET = bin/server
SRCS = src/server.c

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f $(TARGET)
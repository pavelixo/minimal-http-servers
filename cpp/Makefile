CC = g++
CFLAGS = -Wall
TARGET = bin/server
SRCS = src/server.cpp

all: $(TARGET)

$(TARGET): $(SRCS) | bin
	$(CC) $(CFLAGS) $^ -o $@

bin:
	mkdir -p bin

clean:
	rm -f $(TARGET)
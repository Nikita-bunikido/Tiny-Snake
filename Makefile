PROJECT=snake
CC=gcc
CFLAGS=-O0

default: $(PROJECT)

snake:
	$(CC) $@.c -o $@ $(CFLAGS) -include stdio.h -include string.h -include windows.h -include stdlib.h
snake_shape: snake.h
	$(CC) $@.c -o $@ $(CFLAGS) -include snake.h

clean:
	del *.exe
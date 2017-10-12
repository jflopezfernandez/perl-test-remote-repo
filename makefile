
CC      := gcc

CFLAGS  := -std=c11 -Wall -Wextra -Wpedantic -Werror
LFLAGS  := 

SRCS    := $(wildcard *.c)
OBJS    := $(patsubst %.c, %.o, $(SRCS))

PROGRAM := mom.exe

$(PROGRAM): $(OBJS)
	$(CC) $(CFLAGS) $(LFLAGS) -o $(PROGRAM) $(OBJS)

$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) $(LFLAGS) -c $(SRCS)

clean:
	rm -rf $(OBJS) $(PROGRAM)
    

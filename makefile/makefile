CC=gcc
CFLAGS=-I.
DEPS = hellomake.h


%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: hellomake.o hellofunc.o  # The rule depends on two files
	$(CC) -o hellmake hellofunc.o hellomake.o $(CFLAGS)			# There must be a tap before any commands


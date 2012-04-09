CFLAGS=-Wall -Werror -g
LDLIBS=-ljack -lm

keys: keys.c

keys.c: keys.lit
	python ~/bin/tangle.py keys.lit


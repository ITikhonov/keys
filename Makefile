CFLAGS=-Wall -Werror -g
LDLIBS=-ljack -lm -lxcb-keysyms -lxcb -lxcb-icccm -lX11-xcb -lX11

keys: keys.c

keys.c: keys.lit
	python ~/bin/tangle.py keys.lit


CFLAGS=-Wall -Werror -g
LDLIBS=-ljack -lm -lxcb-keysyms -lxcb -lxcb-icccm -lX11-xcb -lX11

keys: .build/keys.c
	gcc -o keys $(CFLAGS) $^ $(LDLIBS)

.build/keys.c: keys.lit
	mkdir -p .build && cd .build && python ~/bin/tangle.py ../keys.lit


.POSIX:

PREFIX = "${HOME}"/.local
CFLAGS = -Ofast
LDLIBS = -lX11

BIN = dwmblocks

$(BIN): main.o
	$(CC) $^ -o $@ $(LDLIBS)

main.o: config.h

clean:
	$(RM) *.o $(BIN)

install: $(BIN)
	install -D -m 755 $(BIN) $(DESTDIR)$(PREFIX)/bin/$(BIN)

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/$(BIN)

.PHONY: clean install uninstall

PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install Neofetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p lostfetch $(DESTDIR)$(PREFIX)/bin/lostfetch
	@ln -s $(DESTDIR)$(PREFIX)/bin/lostfetch $(DESTDIR)$(PREFIX)/bin/neofetch
	@cp -p neofetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/lostfetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/lostfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/neofetch.1*

PREFIX := /usr/local
ALLF := /etc/eivom

all: install

exist:
	if ! [ -d $(ALLF) ]; then mkdir -p $(ALLF); fi

install: exist
	cp eivom-cli $(DESTDIR)$(PREFIX)/sbin/eivom-cli
	chmod 0777 $(DESTDIR)$(PREFIX)/sbin/eivom-cli
	cp files/eivomvars $(DESTDIR)$(ALLF)/eivomvars
	
uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/sbin/eivom-cli
	$(RM) $(DESTDIR)$(ALLF)/eivomvars
	
.PHONY: all install uninstall

PREFIX = /usr/local

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@install -m755 -t ${DESTDIR}${PREFIX}/bin src/*

.PHONY: install

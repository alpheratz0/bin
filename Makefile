PREFIX = /usr/local

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@chmod 755 src/*
	@cp -f src/* ${DESTDIR}${PREFIX}/bin

.PHONY: install

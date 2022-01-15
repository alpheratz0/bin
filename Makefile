PREFIX = /usr/local

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@chmod 755 ./scripts/*
	@cp -f ./scripts/* ${DESTDIR}${PREFIX}/bin

.PHONY: install

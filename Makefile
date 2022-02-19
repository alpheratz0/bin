PREFIX = /usr/local

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@chmod 755 ./bin/*
	@cp -f ./bin/* ${DESTDIR}${PREFIX}/bin

.PHONY: install

#!/bin/sh -e

if test -z "${PREFIX}"; then
	PREFIX=/usr/local
fi

MANPREFIX="${PREFIX}/share/man"

cd src

mkdir -p "${DESTDIR}${PREFIX}/bin"
mkdir -p "${DESTDIR}${MANPREFIX}/man1"

for f in *; do
	echo "installing ${f}..."
	cp "${f}" "${DESTDIR}${PREFIX}/bin"
	chmod 755 "${DESTDIR}${PREFIX}/bin/${f}"
	echo "installing man page for ${f}..."
	cp "../man/${f}.1" "${DESTDIR}${MANPREFIX}/man1"
done

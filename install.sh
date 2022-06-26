#!/bin/sh -e

if test -z "${PREFIX}"; then
	PREFIX=/usr/local
fi

cd src

mkdir -p "${DESTDIR}${PREFIX}/bin"

for f in *; do
	echo "installing ${f}..."
	cp "${f}" "${DESTDIR}${PREFIX}/bin"
	chmod 755 "${DESTDIR}${PREFIX}/bin/${f}"
done

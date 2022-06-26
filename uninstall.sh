#!/bin/sh

if test -z "${PREFIX}"; then
	PREFIX=/usr/local
fi

cd src || exit

for f in *; do
	if test -O "${DESTDIR}${PREFIX}/bin/${f}"; then
		if cmp -s "${f}" "${DESTDIR}${PREFIX}/bin/${f}"; then
			echo "uninstalling ${f}..."
			rm -f "${DESTDIR}${PREFIX}/bin/${f}"
		fi
	fi
done

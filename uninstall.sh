#!/bin/sh -e

if test -z "${PREFIX}"; then
	PREFIX=/usr/local
fi

cd src

for f in *; do
	if test -O "${DESTDIR}${PREFIX}/bin/${f}"; then
		if cmp -s "${f}" "${DESTDIR}${PREFIX}/bin/${f}"; then
			echo "uninstalling ${f}..."
			rm -f "${DESTDIR}${PREFIX}/bin/${f}"
		fi
	fi
done

#!/bin/sh -e

if test -z "${PREFIX}"; then
	PREFIX=/usr/local
fi

MANPREFIX="${PREFIX}/share/man"

num_bins=$(find src -type f | wc -l)
num_manp=$(find man -type f | wc -l)

if [ "$1" != "-noprompt" ]; then
	printf "Are you sure you want to install:\n    * %d binaries to %s\n    * %d man pages to %s\n? [Y/n]: " \
		"${num_bins}" "${DESTDIR}${PREFIX}/bin" \
		"${num_manp}" "${DESTDIR}${MANPREFIX}/man1"

	read -r ans

	if [ "$ans" != "Y" ]; then
		exit 0
	fi
fi

cd src

mkdir -p "${DESTDIR}${PREFIX}/bin"
mkdir -p "${DESTDIR}${MANPREFIX}/man1"

for f in *; do
	echo "installing ${f}..."
	cp "${f}" "${DESTDIR}${PREFIX}/bin"
	chmod 755 "${DESTDIR}${PREFIX}/bin/${f}"
	if test -f "../man/${f}.1"; then
		echo "installing man page for ${f}..."
		cp "../man/${f}.1" "${DESTDIR}${MANPREFIX}/man1"
	fi
done

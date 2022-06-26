#!/bin/sh -e

if test -z "${PREFIX}"; then
	PREFIX=/usr/local
fi

cd src

mkdir -p ${PREFIX}/bin

for f in *; do
	echo "installing ${f}..."
	install -m755 -t "${DESTDIR}${PREFIX}/bin" "$f"
done


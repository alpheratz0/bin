#!/bin/sh

date="$1"
day="$(echo "$date" | cut -d '-' -f 1)"
month="$(echo "$date" | cut -d '-' -f 2)"
year="$(echo "$date" | cut -d '-' -f 3)"
aurorrior_result="$(aurorrior "$date")"

printf "AURORA - Live %04s%02s%02s-X @ %s.mkv" "$year" "$month" "$day" "$aurorrior_result"

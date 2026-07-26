#!/bin/bash

mkdir -p ok

date="$1"
place="$2"
prefix="AURORA - Live $date"
count=5

ls -Sh *.mkv | while read f; do
  [ -e "$f" ] || continue

  if [ $count -lt 10 ]; then
    suffix="$count"
  else
    # Convert count to letter: 10 -> A, 11 -> B, etc.
    num=$((count - 9))
    suffix=$(echo {A..Z} | awk -v n=$num '{print $n}')
  fi

  newname="$prefix-$suffix @ $place.mkv"
  mv -n -- "$f" "ok/$newname"

  ((count++))
done

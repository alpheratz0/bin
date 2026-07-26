#!/bin/sh

id="$(echo "$1" | rg -o 'v=[A-Za-z0-9_-]{11}' | cut -d= -f2)"
time="$2"

test -z "$time" && time="00:10"

ffmpeg -ss "$time" -i "$(yt-dlp --no-download-archive -f bestvideo --get-url "https://youtube.com/watch?v=${id}")" -vframes 1 -q:v 2 "screenshot-${id}.jpg"

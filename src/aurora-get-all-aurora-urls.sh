#!/bin/bash

yt-dlp -j  --no-download-archive --flat-playlist "$1" | \
	jq -r 'select(.title | ascii_downcase | contains("aurora")) | .url' > urls

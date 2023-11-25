#!/bin/bash
read songUrl
exec yt-dlp -x -f 250 -o "%(title)s" --add-metadata --parse-metadata ":(?P<meta_synopsis>)" --parse-metadata ":(?P<meta_purl>)" --parse-metadata ":(?P<meta_comment>)" --parse-metadata ":(?P<meta_description>)" $songUrl

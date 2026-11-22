#!/usr/bin/env bash
set -e
printf "file '2026-11-21_19-05-21_part01.mp4'
file '2026-11-21_19-05-21_part02.mp4'\n" > concat_list.txt
echo "Recombining 2 parts into 2026-11-21_19-05-21.mp4..."
ffmpeg -y -f concat -safe 0 -i concat_list.txt -c copy "2026-11-21_19-05-21.mp4"
rm concat_list.txt
echo "Done: 2026-11-21_19-05-21.mp4"

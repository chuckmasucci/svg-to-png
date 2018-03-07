#!/bin/bash
FILES="$1/*.svg"
for f in $FILES
do
  echo "Processing ${f%.*} file..."
  inkscape -z -e "${f%.*}".png -w 24 -h 24 "${f%.*}".svg
done

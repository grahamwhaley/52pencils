#!/bin/bash

[[ -z "$1" ]] && echo "Need one argument" && exit 1

INFILE=$1
FILENAME=small.jpg

# Convert picture to 800x600 size
sips -Z 800 ${INFILE} --out ${FILENAME}

# Remove all exif data
exiftool -all= ${FILENAME}

# Add in our exif data
exiftool -Copyright="Graham Whaley" ${FILENAME}

# merge in our watermark
convert ${FILENAME}  -font Arial -pointsize 10 \
          -draw "gravity south \
                 fill black  text 0,12 'Copyright Graham Whaley' \
                 fill white  text 1,11 'Copyright Graham Whaley' " \
          cp_${FILENAME}
echo "New image is in cp_${FILENAME}"

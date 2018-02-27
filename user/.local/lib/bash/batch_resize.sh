#!/bin/sh

# For jpg only. Other formats will be added soon.
# Imagemagick needed!
#
# TODO: add parameters for new image size & thumb size
# TODO: add parameter for thumb creation
# TODO: add PNG, GIF support
#


# extension filters
# make *.jpg only with `mv`, because jpg, JPG, JPEG & jpeg is the same

echo -n "Start convertation "

if [ `ls -1 *.JPG 2>/dev/null | wc -l` -gt 0 ]; then
  for f in *.JPG; do
    mv "$f" "${f%.JPG}.jpg";
    echo -n "."
  done
fi

if [ `ls -1 *.jpeg 2>/dev/null | wc -l` -gt 0 ]; then
  for f in *.jpeg; do
    mv "$f" "${f%.jpeg}.jpg";
    echo -n "."
  done
fi

if [ `ls -1 *.JPEG 2>/dev/null | wc -l` -gt 0 ]; then
  for f in *.JPEG; do
    mv "$f" "${f%.JPEG}.jpg";
    echo -n "."
  done
fi

# make viewvable size
mogrify -resize 800x600 *.jpg
echo -n "."
# create thumb dir & copy images to it for resize & rename
mkdir -p thumb
echo -n "."
cp *.jpg thumb/
echo -n "."

# resize & rename files
cd thumb
echo -n "."
mogrify -resize 159x120 *.jpg
echo -n "."
for f in *.jpg; do mv "$f" "${f%.jpg}_thumb.jpg"; done
echo -n "."

# move thumbs to parent dir
mv *.jpg ../
echo -n "."
cd ../
echo -n "."
rm -r thumb
echo -n "."
echo ''
echo "Convertation finished" 

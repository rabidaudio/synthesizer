#!/bin/bash
mkdir pdf-out
for i in {1..19}; do
  phantomjs rasterize.js http://localhost:5455/#${i} pdf-out/${i}.png "1600px*1200px"
done

convert pdf-out/{1..19}.png output.pdf
rm -r pdf-out
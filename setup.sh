#!/bin/bash
set -e

sudo apt-get install graphviz pandoc

# Get the entire reveal install
wget https://github.com/hakimel/reveal.js/archive/3.1.0.tar.gz
tar zxf 3.1.0.tar.gz
mv reveal.js-3.1.0 reveal.js
rm 3.1.0.tar.gz

# Change h1 font-size from 3.77em to 3.0em
sed -i 's/3.77em/3.0em/g' reveal.js/css/theme/*.css


#!/bin/bash
set -e

sudo apt-get install graphviz pandoc

# Get the entire reveal install
wget https://github.com/hakimel/reveal.js/archive/3.1.0.tar.gz
tar zxf 3.1.0.tar.gz
mv reveal.js-3.1.0 reveal.js
rm 3.1.0.tar.gz


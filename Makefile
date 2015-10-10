all: index.html

# Make the index.html from index.md and make all lists into fragments
index.html:
	pandoc -t revealjs --template=pandoc-templates/default.revealjs \
	--standalone --section-divs  --variable theme="beige" \
	--variable transition="linear" --incremental \
	index.md -o index.html

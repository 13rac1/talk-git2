
GRAPHDIR := graphs
# Dot files to create graph png images
GRAPHFILES := $(shell find $(GRAPHDIR) -type f -name "*.dot")
IMAGEFILES := $(patsubst graphs/%.dot, images/graphs/%.png, $(GRAPHFILES))

.PHONY: clean

all: images/graphs index.html $(IMAGEFILES)

# Make output directory
images/graphs:
	mkdir -p images/graphs

# Make the index.html from index.md.
# --incremental makes lists into revealjs fragments
index.html: index.md
	pandoc -t revealjs --template=pandoc-templates/default.revealjs \
	--standalone --section-divs --variable theme="league" \
	--variable transition="convex" --incremental \
	index.md -o index.html

#dot graphs/example.dot -Tpng -o images/example.png
images/graphs/%.png: graphs/%.dot
	dot $< -Tpng -o $@

clean:
	rm index.html $(IMAGEFILES)
	rmdir images/graphs

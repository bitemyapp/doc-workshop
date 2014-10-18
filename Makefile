build:
	pandoc --highlight-style zenburn --include-in-header header.txt -f markdown -t latex example.md -o output.pdf

rebuild:
	./rebuild.sh

build-site:
	pandoc --include-in-header header.txt -f markdown -t html printing.md arithmetic.md functions.md -o book.html

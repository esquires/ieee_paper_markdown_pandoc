#FILES = paper.md \
#		metadata.yaml
FILES = sig-alternate-sample.md \
		metadata.yml

PANDOC = /usr/local/bin/pandoc
OUTPUT = build
PDF = bnisly3-analysis.pdf

FLAGS = \
	-f markdown \
	--pdf-engine=/usr/local/bin/pdflatex \
	--filter table-filter.py \
	--filter=/usr/local/bin/pandoc-citeproc \
	--bibliography=sigproc.bib \
	--csl=bibliography.csl \
	-s \
	-F /usr/local/bin/pandoc-crossref

#FLAGS = --bibliography=bibliography.bib \
#		--csl=bibliography.csl \
#		-s \
#		-F /usr/local/bin/pandoc-crossref \
#		-f markdown

FLAGS_TEX = --bibliography=bibliography.bib \
		--csl=bibliography.csl \
		-s \
		-F /usr/local/bin/pandoc-crossref

FLAGS_PDF = --template=template.latex

all: pdf

pdf: mkdir
	$(PANDOC) -o $(OUTPUT)/$(PDF) $(FLAGS) $(FLAGS_PDF) $(FILES)

test: mkdir
	$(PANDOC) -o $(OUTPUT)/test.pdf $(FLAGS) $(FLAGS_PDF) test.md

test2: mkdir
	$(PANDOC) -o $(OUTPUT)/test2.pdf $(FLAGS) $(FLAGS_PDF) test2.md

mkdir:
	@if [ ! -e build ]; then mkdir build; fi

tex: mkdir
	$(PANDOC) -o $(OUTPUT)/bnisly3-analysis.tex $(FLAGS_PDF) $(FLAGS) $(FILES)

tex2pdf: mkdir
	$(PANDOC) -o $(OUTPUT)/$(PDF) $(FLAGS_TEX) $(FLAGS_PDF) $(OUTPUT)/bnisly3-analysis.tex

view: open

open:
	open $(OUTPUT)/$(PDF)

clean:
	rm -f build/*

#/usr/local/bin/pandoc \
#	-f markdown \
#	--pdf-engine=/usr/local/bin/pdflatex \
#	--variable documentclass=sig-alternate-05-2015 \
#	--filter table-filter.py \
#	--filter=/usr/local/bin/pandoc-citeproc \
#	--bibliography=sigproc.bib \
#	--csl=acm-sig-proceedings-long-author-list.csl \
#	metadata.yml sig-alternate-sample.md \
#	-o sig-alternate-sample.pdf

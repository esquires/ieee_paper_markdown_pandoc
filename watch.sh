#!/bin/sh

# You probably want to set your python virtual env
source activate tex

# Watch the following files and execute command when they are modified
fswatch -o *.md bibliography.bib metadata.yaml makefile pandoc-crossref.yaml | xargs -n1 make

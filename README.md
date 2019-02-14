# ieee_paper_markdown_pandoc
Example project of an academic paper using the IEEE template. I did my work on MacOS. Your OS may need other requirements.

# TeX Environment
0. Install homebrew (https://brew.sh/)

Install MacTeX:
1. `brew cask install mactex`
2. `brew install pandoc pandoc-crossref`

# Python Environment
I used python 3.6. I did not try 2.7. Here are instructions on setting up your environment based on conda:

1. `conda create --name pandoc python=3.6 -y`
2. `source activate pandoc`
3. `pip install -r requirements.txt`

# Development Environment
If you haven't installed the Apple developer tools, you may need to do that (for make).
Or you can try to installing it via homebrew.
You'll want to ensure the following are in /usr/local/bin (or otherwise modify the makefile accordingly):

* pandoc
* pandoc-crossref
* pdflatex
* pandoc-citeproc

# Ready, set, go
`make` will create 2 pdf files in the `build` directory.
Those pdfs are also in the main directory for your convenience.

# Thanks
To Daniel Graziotin whose repo I forked: https://github.com/dgraziotin/acm_sig_paper_markdown_pandoc

Context: https://ineed.coffee/4008/how-to-write-an-acm-styled-conference-paper-using-markdownpandoc/

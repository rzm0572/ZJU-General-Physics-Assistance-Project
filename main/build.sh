#!/bin/bash

rm -f *.aux *.bbl *.blg *.dvi *.fls *.idx *.ilg *.ind *.lof *.log *.lot *.out *.toc *.xdv

echo "1) Typesetting"

xelatex -no-pdf -interaction=nonstopmode main 2>&1
# makeindex main 2>&1
bibtex main 2>&1
xelatex -no-pdf -interaction=nonstopmode main 2>&1
xelatex -interaction=nonstopmode main 2>&1

# latexmk -interaction=nonstopmode main

echo "2) Cleaning temp files"
rm -f *.aux *.bbl *.blg *.dvi *.fls *.idx *.ilg *.ind *.lof *.log *.lot *.out *.toc *.xdv

all: article2.pdf

article2.pdf: article2.tex \
		bib.bib
	pdflatex article2.tex; bibtex article2; pdflatex article2.tex; pdflatex article2.tex

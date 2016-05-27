.PHONY: all presentation writeup

all: writeup presentation

writeup: main.tex
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

presentation: presentation.tex
	xelatex presentation.tex
	bibtex presentation
	xelatex presentation.tex
	xelatex presentation.tex

clean:
	rm *.aux *.log *.out *.bbl

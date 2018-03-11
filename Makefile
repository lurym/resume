# LaTeX Makefile
FILE=CV_Lukasz_Rymko

all: $(FILE).pdf

.PHONY: clean

clean:
	rm -rf *.out 
	rm -rf *.log
	rm -rf *.idx
	rm -rf *.aux
	rm -f ${FILE}.pdf


$(FILE).pdf: *.tex *.sty
	pdflatex -shell-escape $(FILE).tex
	pdflatex -shell-escape $(FILE).tex

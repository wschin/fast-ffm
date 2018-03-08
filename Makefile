all: fast-ffm.pdf

%.pdf: %.tex
	pdflatex $<
	pdflatex $<
clean:
	rm *.pdf *.aux *.log *.bbl

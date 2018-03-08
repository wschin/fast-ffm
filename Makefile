all: fast-ffm.pdf

%.pdf: %.tex
	pdflatex $<
	#bibtex $*
	pdflatex $<
	pdflatex $<
	pdflatex $<
clean:
	rm *.pdf *.aux *.log *.bbl

bib:
	scp linux1:~cjlin/latex/sdp.bib .

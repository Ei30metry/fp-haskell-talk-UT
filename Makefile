all: *.tex
	latexmk -shell-escape $*

clean:
	rm -f *.aux *.pdf *.log *.nav *.out *.snm *.toc *.o *.hi *.fdb_latexmk *.fls *.vrb

.PHONY: all clean

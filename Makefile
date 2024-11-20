all: *.tex
	latexmk -shell-escape $*

clean:
	rm -f *.aux *.pdf *.log *.nav *.out *.snm *.toc

.PHONY: all clean

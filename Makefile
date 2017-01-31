all:
	xelatex main.tex
	evince main.pdf
clean:
	rm *.aux *.log *.nav *.toc *.out *.snm

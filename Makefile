TARGET = main.pdf
SRC = main.tex

all:
	latexmk -pdfxe -interaction=nonstopmode -silent $(SRC)

clean:
	latexmk -c
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm

distclean: clean
	# -C cleans everything including the PDF
	latexmk -C

all: lekh-dothraki.pdf

lekh-dothraki.pdf: document.pdf
	mv document.pdf lekh-dothraki.pdf

document.pdf: document.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make document.tex

clean:
	latexmk -CA && rm *.pdf

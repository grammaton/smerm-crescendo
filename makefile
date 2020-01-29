TEX = xelatex
BIB = bibtex
src = 2020-GS-thinking-tetrahedral-today.tex
bcf = 2020-GS-thinking-tetrahedral-today
PDF = 2020-GS-thinking-tetrahedral-today.pdf
WCN = pdftotext 2020-GS-thinking-tetrahedral-today.pdf - | wc -c > char.txt
CCN = pdftotext 2020-GS-thinking-tetrahedral-today.pdf - | wc -w > words.txt

buildclean :
	$(TEX) $(src) && $(BIB) $(bcf) && $(TEX) $(src) && $(WCN) && $(CCN) && $(TEX) $(src) && rm *.aux *.log *.toc *.run.xml *.bbl *.blg *.bcf *.fdb_latexmk *.fls *.idx *.ilg *.ind && open $(PDF)

build :
	$(TEX) $(src) && $(BIB) $(bcf) && $(TEX) $(src) && $(WCN) && $(CCN) && $(TEX) $(src)

rebuild :
	$(TEX) $(src)

.PHONY: clean
clean :
	rm *.aux *.log *.toc *.run.xml *.bbl *.blg *.bcf *.fdb_latexmk *.fls *.idx *.ilg *.ind *.lof *.lot *.pdf

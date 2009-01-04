
PICS=


LATEX    = latex
BIBTEX   = bibtex
DVIPS    = dvips
DVIPDF   = dvipdf
FIG2DEV  = fig2dev

.SUFFIXES : .ltx .dvi .pdf .ps .fig .tex .eps

%.dvi: %.tex
	$(LATEX) $<
	if grep Rerun `basename $< .tex`.log >/dev/null; then $(LATEX) $< ; fi
	#$(BIBTEX) `basename $< .tex`
	#$(LATEX) $<
	#if grep Rerun `basename $< .tex`.log >/dev/null; then $(LATEX) $< ; fi

%.ps: %.dvi
	$(DVIPS) -f < $< > $@

.dvi.pdf:
	$(DVIPDF) $< $@

%.tex: %.fig
	$(FIG2DEV) -L latex < $< > $@

%.eps: %.fig
	$(FIG2DEV) -L eps < $< > $@


all: manual.pdf

clean:
	rm -f *.o *.a *~ *.dvi *.ps *.pdf *.bak core
	rm -f *.aux *.log *.toc *.bbl *.blg $(PICS)


manual.dvi: manual.tex $(PICS)


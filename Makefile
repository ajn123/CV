PROJECT=alex_norton_modern_resume
COVER=alex_norton_cover_letter
TEX=pdflatex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
	$(BUILDTEX)
	open $(PROJECT).pdf

cover:
	$(TEX) alex_norton_cover_letter.tex
	open $(COVER).pdf
	

clean:
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~

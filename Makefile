PROJECT=alex_norton_modern_resume
COVER=alex_norton_cover_letter
TEX=pdflatex
BUILDTEX=$(TEX) $(PROJECT).tex

resume:
	$(BUILDTEX)
	open $(PROJECT).pdf

cover:
	$(TEX) $(COVER).tex
	open $(COVER).pdf
	

clean:
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~

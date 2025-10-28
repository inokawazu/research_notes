TEXFILES=header.tex

PDFFILES=$(patsubst %.tex,%.pdf,$(TEXFILES))

.PHONY: all clean

all: $(PDFFILES)

clean:
	latexmk -C

%.pdf: %.tex
	@echo runding $<
	latexmk -pdf $<

TEXFILES=notes.tex

PDFFILES=$(patsubst %.tex,%.pdf,$(TEXFILES))

.PHONY: all clean

all: $(PDFFILES)

clean:
	latexmk -C

notes.pdf: notes.tex math_notes/*
	@echo runding $<
	latexmk -pdf $<

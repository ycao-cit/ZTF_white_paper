#
# LaTex_Makefile
# Yi Cao, 2016-12-08 09:45
#

OBJ = WhitePaper
LATEX = /Library/TeX/texbin/pdflatex
BIBTEX = /Library/TeX/texbin/bibtex

all:
	for item in $(OBJ); \
		do \
		$(LATEX) $$item; \
		$(LATEX) $$item; \
		$(BIBTEX) $$item; \
		$(LATEX) $$item; \
		done;
	rm -f *.{blg,out,log,aux}

# vim:ft=make
#

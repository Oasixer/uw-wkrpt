# An example Makefile, demonstrating Latexmk
#
# Assumptions:
#   - The .tex file is report.tex
#   - It specifies report.bib as the bibliography
#   - Perl is installed
#   - latexmk.pl and uw-wkrpt.cls are in the working directory, instead of
#     being installed to the system

.PHONY: all clean clean-all

all: report.tex report.bib latexmk.pl uw-wkrpt.cls
	latex-mk -bibtex -pdf $<

clean:
	latex-mk -c
	rm -f report.bbl
	rm -f report.run.xml
	rm -f report-blx.bib

clean-all: clean
	rm -f report.pdf

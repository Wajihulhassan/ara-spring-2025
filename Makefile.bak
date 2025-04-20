# "Improved" Makefile for LaTeX documents
# INTPUFILE This defines the name of the file you want to latex
# the make file will automatically look for INPUT.tex as the latex file
INPUTFILE:=statement

## biber
BIBCC:=biber
BIBCC_FLAGS:='--input-directory latex.out'

## latexrun
LATEXCC:=latexrun
LATEXCC_FLAGS:=--bibtex-cmd $(BIBCC) --bibtex-args $(BIBCC_FLAGS) --verbose-cmds
CLEAN_FLAGS:=--clean-all

pdf: $(INPUTFILE).pdf
	$(LATEXCC)  $(LATEXCC_FLAGS) $(INPUTFILE)

$(INPUTFILE).pdf:
	$(LATEXCC) $(LATEXCC_FLAGS) $(INPUTFILE)

.PHONY: clean
clean:
	$(LATEXCC) $(CLEAN_FLAGS)

.PHONY: view
view: $(INPUTFILE).pdf layout
	@open $(INPUTFILE).pdf

.PHONY: open
open:
	@atom .

.PHONY: layout
layout:
	@open -g hammerspoon://desktopWriting

.PHONY: work
work: open pdf view layout

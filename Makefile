# Build stages
# 1. SRCDIR - main.typ, lit.typ, figs/*.ly
# 2. PATDIR - cp main.typ lit.typ PATDIR/, figs/*.svg
# 3. OBJDIR - essay.pdf

SRCDIR := src

PATDIR := patch

$(PATDIR):
	mkdir -p $(PATDIR)

$(PATDIR)/essay:
	mkdir -p $(PATDIR)/essay

$(PATDIR)/figs:
	mkdir -p $(PATDIR)/figs

# Copy files from SRCDIR
$(PATDIR)/%:: $(SRCDIR)/%
	cp -r $< $@
$(PATDIR)/essay/main.typ: $(SRCDIR)/essay/main.typ | $(PATDIR)/essay 
$(PATDIR)/essay/lit.typ:  $(SRCDIR)/essay/lit.typ  | $(PATDIR)/essay
$(PATDIR)/citations.bib:  $(SRCDIR)/citations.bib  | $(PATDIR)
$(PATDIR)/deps:           $(SRCDIR)/deps           | $(PATDIR)

# Recipe for all figures
$(PATDIR)/figs/%.svg: $(SRCDIR)/figs/%.ly $(SRCDIR)/figure-preamble.ly | $(PATDIR)/figs
	rm -rf $@
	lilypond -dno-point-and-click --svg -o "$(PATDIR)/figs/$$(basename $@ .svg)" $<

ESSAY_FIGS = $(shell PATDIR=$(PATDIR) $(SRCDIR)/find_figs.sh $(SRCDIR)/essay/lit.typ)

patch: $(PATDIR)/essay/main.typ $(PATDIR)/essay/lit.typ $(PATDIR)/citations.bib $(PATDIR)/deps $(ESSAY_FIGS)
.PHONY: patch

OBJDIR := build

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(OBJDIR)/figs_png:
	mkdir -p $(OBJDIR)/figs_png

# Figures for Google Slide
$(OBJDIR)/figs_png/%.png: $(PATDIR)/figs/%.svg | $(OBJDIR)/figs_png
	rm -f $@
	inkscape --export-filename="$@" $<

# Essay
$(OBJDIR)/essay.pdf: $(PATDIR)/essay/main.typ $(PATDIR)/essay/lit.typ $(PATDIR)/citations.bib $(PATDIR)/deps $(ESSAY_FIGS) | $(OBJDIR)
	typst compile --root $(PATDIR) $< $@

$(OBJDIR)/annotated_bib.pdf: $(PATDIR)/annotated_bib/main.typ $(PATDIR)/deps | $(OBJDIR)
	typst compile --root $(PATDIR) $< $@

essay: $(OBJDIR)/essay.pdf
.PHONY: essay

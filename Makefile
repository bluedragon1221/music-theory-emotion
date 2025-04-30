OBJDIR := build

$(OBJDIR):
	mkdir -p $(OBJDIR)

# Figures
$(OBJDIR)/figs:
	mkdir -p $(OBJDIR)/figs

$(OBJDIR)/figs_png:
	mkdir -p $(OBJDIR)/figs_png

$(OBJDIR)/figs/%.svg: figs/%.ly figure-preamble.ly | $(OBJDIR)/figs
	rm -f $@
	lilypond -dno-point-and-click --svg -o "$(OBJDIR)/figs/$$(basename $@ .svg)" $<

# Figures for Google Slide
$(OBJDIR)/figs_png/%.png: $(OBJDIR)/figs/%.svg | $(OBJDIR)/figs_png
	rm -f $@
	inkscape --export-filename="$@" $<

# Typst targets
%.pdf::
	typst compile --root . $< $@

ESSAY_FIGS := $(shell ./find_figs.sh essay/lit.typ)
$(OBJDIR)/essay.pdf: essay/main.typ essay/lit.typ $(ESSAY_FIGS) citations.bib | $(OBJDIR)

$(OBJDIR)/annotated_bib.pdf: annotated_bib/main.typ citations.bib | $(OBJDIR)


build:
	mkdir -p build

# Figures
build/figs:
	mkdir -p build/figs

build/figs/%.svg: figs/%.ly figure-preamble.ly | build/figs
	rm -f $@
	lilypond -dno-point-and-click --svg -o "build/figs/$$(basename $@ .svg)" $<

# Typst targets
%.pdf::
	typst compile --root . $< $@

ESSAY_FIGS := $(shell ./find_figs.sh essay/lit.typ)
build/essay.pdf: essay/main.typ essay/lit.typ $(ESSAY_FIGS) citations.bib | build

build/annotated_bib.pdf: annotated_bib/main.typ citations.bib | build

SLIDES_DEPS := $(shell ./find_figs.sh slides/lit.typ)
build/slides.pdf: slides/main.typ slides/lit.typ $(SVG_FILES) citations.bib | build


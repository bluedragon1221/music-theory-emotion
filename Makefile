build:
	mkdir build

clean:
	rm -rf build/
.PHONY: clean

# FIGURES
build/figs:
	mkdir -p build/figs

SVG_FILES := $(patsubst figs/%.ly,build/figs/%.svg,$(wildcard figs/*.ly))

build/figs/%.svg: essay/figs/%.ly figure-preamble.ly | build/figs
	rm -f $@
	lilypond -dno-point-and-click -dbackend=svg -o "build/figs/$$(basename $@ .svg)" $<

# ESSAY
build/essay.pdf: essay/main.typ lit.typ $(SVG_FILES) citations.bib | build
	typst compile --root . essay/main.typ build/essay.pdf

# ANNOTATED BIBLIOGRAPHY
build/annotated_bib.pdf: annotated_bib/annotated_bib.typ citations.bib | build
	typst compile --root . $< $@

# SLIDES
build/slides.pdf: slides/main.typ lit.typ $(SVG_FILES) citations.bib | build
	typst compile --root . $< $@


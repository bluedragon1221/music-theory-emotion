build:
	mkdir build

clean:
	rm -rf build/
.PHONY: clean

# Figures
build/figs:
	mkdir -p build/figs

SVG_FILES := $(patsubst figs/%.ly,build/figs/%.svg,$(wildcard figs/*.ly))

build/figs/%.svg: figs/%.ly figure-preamble.ly | build/figs
	rm -f $@
	lilypond -dno-point-and-click -dbackend=svg -o "build/figs/$$(basename $@ .svg)" $<

# Typst targets
build/%.pdf:
	typst compile --root . $< $@

build/essay.pdf: essay/main.typ lit.typ $(SVG_FILES) citations.bib | build
build/annotated_bib.pdf: annotated_bib/main.typ citations.bib | build
build/slides.pdf: slides/main.typ lit.typ $(SVG_FILES) citations.bib | build


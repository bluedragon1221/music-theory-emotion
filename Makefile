LY_FILES := $(wildcard figs/*.ly)
SVG_FILES := $(patsubst figs/%.ly,build/%.svg,$(LY_FILES))

figures: $(SVG_FILES)
.PHONY: figures

build:
	mkdir build

build/%.svg: figs/%.ly figure-preamble.ly | build
	rm -f $@
	lilypond -dno-point-and-click -dbackend=svg -o "build/$$(basename $@ .svg)" $<

build/build.pdf: main.typ essay.typ figures
	typst compile $< $@

all: build/build.pdf figures
.PHONY: all

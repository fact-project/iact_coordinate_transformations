all: build/coordinate_trafos.pdf


build/coordinate_trafos.pdf: FORCE | build
	latexmk \
		-lualatex \
		-output-directory=build \
		-halt-on-error \
		-interaction=nonstopmode \
		coordinate_trafos

build:
	mkdir -p build

FORCE:  # latexmk does its own dependency management, this forces it to run

clean:
	rm -rf build

.PHONY: all clean FORCE

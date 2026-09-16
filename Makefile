.PHONY: all clean

ACME ?= acme
OUTPUT := build/c64_logo_gradient_scroller_segfix.prg
SOURCE := c64_logo_gradient_scroller_segfix.s

all: $(OUTPUT)

$(OUTPUT): $(SOURCE)
	@mkdir -p build
	$(ACME) --strict-segments -f cbm -o $@ $(SOURCE)

clean:
	rm -rf build

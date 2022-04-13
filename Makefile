SHELL=/bin/bash

# get the basename of the containing directory
# this will be used to name othe output document
BUILD_DIR := $(shell basename $(abspath $(dir $(lastword $(MAKEFILE_LIST)))))

DRAFT_SUPPLEMENT_PAGE = $(shell pdftk ${BUILD_DIR}-draft.pdf dump_data_utf8 | pcregrep -M -o1 '^BookmarkBegin\nBookmarkTitle: Supplementary Material\nBookmarkLevel: 1\nBookmarkPageNumber: ([0-9]+)$$')

RELEASE_SUPPLEMENT_PAGE = $(shell pdftk ${BUILD_DIR}.pdf dump_data_utf8 | pcregrep -M -o1 '^BookmarkBegin\nBookmarkTitle: Supplementary Material\nBookmarkLevel: 1\nBookmarkPageNumber: ([0-9]+)$$')

all: ${BUILD_DIR}-draft.pdf

draft: ${BUILD_DIR}-draft.pdf ${BUILD_DIR}-manuscript-draft.pdf ${BUILD_DIR}-supplement-draft.pdf

release: ${BUILD_DIR}-draft.pdf ${BUILD_DIR}-manuscript.pdf ${BUILD_DIR}-supplement.pdf

view:
	atom ${BUILD_DIR}.pdf

${BUILD_DIR}.pdf: main.tex
	latexmk -pdf -silent \
    -jobname=${BUILD_DIR} \
    -pdflatex="pdflatex -interaction=nonstopmode" main.tex

${BUILD_DIR}-manuscript.pdf: ${BUILD_DIR}.pdf
	pdftk ${BUILD_DIR}.pdf cat 1-$$(( $(RELEASE_SUPPLEMENT_PAGE) - 1 )) output ${BUILD_DIR}-manuscript.pdf

${BUILD_DIR}-supplement.pdf: ${BUILD_DIR}.pdf
	pdftk ${BUILD_DIR}.pdf cat $(RELEASE_SUPPLEMENT_PAGE)-end output ${BUILD_DIR}-supplement.pdf

${BUILD_DIR}-draft.pdf: main.tex
	latexmk -pdf -silent \
    -jobname=${BUILD_DIR}-draft \
    -pdflatex="pdflatex -interaction=nonstopmode" draft.tex

${BUILD_DIR}-manuscript-draft.pdf: ${BUILD_DIR}-draft.pdf
	pdftk ${BUILD_DIR}-draft.pdf cat 1-$$(( $(DRAFT_SUPPLEMENT_PAGE) - 1 )) output ${BUILD_DIR}-manuscript-draft.pdf

${BUILD_DIR}-supplement-draft.pdf: ${BUILD_DIR}-draft.pdf
	pdftk ${BUILD_DIR}-draft.pdf cat $(DRAFT_SUPPLEMENT_PAGE)-end output ${BUILD_DIR}-supplement-draft.pdf

clean:
	rm -f ${BUILD_DIR}.pdf
	rm -f ${BUILD_DIR}-draft.pdf
	rm -f ${BUILD_DIR}-manuscript.pdf
	rm -f ${BUILD_DIR}-manuscript-draft.pdf
	rm -f ${BUILD_DIR}-supplement.pdf
	rm -f ${BUILD_DIR}-supplement-draft.pdf

sview:
	xdg-open ${BUILD_DIR}-draft.pdf 2>/dev/null

cleaner: clean
	latexmk -CA
	# remove auxillary files, excepting .tex and .bib files
	find . -type f -name ${BUILD_DIR}"*" ! -name '*.tex' ! -name '*.bib' -delete

fresh: cleaner all

.PHONY: draft release view clean sview cleaner fresh

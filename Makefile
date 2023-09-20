PDF_OUTPUT = output/weekly-planner.pdf
BOOKLET_PDF_OUTPUT = output/weekly-planner-book.pdf
TEX_INPUT = src/weekly-planner.tex
OUTDIR = ../output

all: pdf

pdf: $(BOOKLET_PDF_OUTPUT)

clean: $(TEX_INPUT)
	latexmk -c -cd -outdir=$(OUTDIR) -xelatex $<

$(PDF_OUTPUT): $(TEX_INPUT)
	latexmk -cd -outdir=$(OUTDIR) -xelatex $<;
	latexmk -c -cd -outdir=$(OUTDIR) -xelatex $<

$(BOOKLET_PDF_OUTPUT): $(PDF_OUTPUT)
	pdfbook2 --signature 8 $<

watch: $(TEX_INPUT)
	latexmk -cd -outdir=$(OUTDIR) -pvc -xelatex $(word 1, $^)


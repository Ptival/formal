SOURCES=coq.ott
MIDDLE=$(SOURCES:.ott=.tex)
OUTPUT=$(SOURCES:.ott=.pdf)

all: $(OUTPUT)

clean:
	rm -f $(OUTPUT) $(MIDDLE)
	rm -f *.log *.aux

%.tex:%.ott
	ott $< -o $@

%.pdf:%.tex
	pdflatex $<


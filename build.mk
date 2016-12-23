MDS     := $(wildcard *.md)
ODTS    := $(MDS:%.md=%.odt)
DOCXS   := $(MDS:%.md=%.docx)
PDFS    := $(MDS:%.md=%.pdf)
DOCX2PDF:= $(DOCXS:%=%.pdf)
OUTPUTS := $(ODTS) $(DOCXS) $(PDFS) $(DOCX2PDF)

all: $(OUTPUTS)
clean:
	rm -f $(OUTPUTS)

%.odt: %.md
	pandoc \
		-M figPrefix:"Figure" \
		-M eqnPrefix:"Equation" \
		-M tblPrefix:"Table" \
		-f markdown+east_asian_line_breaks \
		--template=res/odt.template \
		--reference-odt=res/reference.odt \
		$< -o $@

odtexport = \
			soffice \
					--headless --convert-to $(1) $(2) || \
			"/c/Program Files (x86)/LibreOffice 5/program/soffice.exe" \
					--headless --convert-to $(1) $(2)
%.docx:	%
	cp $< $@
%.docx:	%.odt
	$(call odtexport, docx, $<)
%.pdf: %.odt
	$(call odtexport, pdf, $<)
%.pdf: %.docx
	$(call odtexport, pdf, $<)

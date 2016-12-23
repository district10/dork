MDS     := $(wildcard *.md)
PDFS    := $(MDS:%.md=%.pdf)
DOCXS   := $(MDS:%.md=%.docx)
ODTS    := $(MDS:%.md=%.odt)
OUTPUTS := $(ODTS) $(DOCXS) $(PDFS)

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
					--headless --convert-to pdf $(1) || \
			"/c/Program Files (x86)/LibreOffice 5/program/soffice.exe" \
					--headless --convert-to pdf $(1)
%.docx:	%.odt
	$(call odtexport, $<)
%.pdf: %.odt
	$(call odtexport, $<)


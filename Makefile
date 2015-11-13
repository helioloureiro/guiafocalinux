PACKAGES := index.html
PACKAGES += index.en.pdf

all: $(PACKAGES)

index.html: index.sgml
	debiandoc2html -C -l en.UTF-8 -1 index.sgml

index.en.pdf: index.sgml
	debiandoc2pdf -C -l en.UTF-8 index.sgml

clean:
	rm -rf $(PACKAGES)

# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =
BUILDDIR      = build

# User-friendly check for sphinx-build
ifeq ($(shell which $(SPHINXBUILD) >/dev/null 2>&1; echo $$?), 1)
$(error The '$(SPHINXBUILD)' command was not found. Make sure you have Sphinx installed, then set the SPHINXBUILD environment variable to point to the full path of the '$(SPHINXBUILD)' executable. Alternatively you can add the directory with the executable to your PATH. If you don't have Sphinx installed, grab it from http://sphinx-doc.org/)
endif

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) source
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) source

.PHONY: help
help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"
	@echo "  htmlwerror to make standalone HTML files. Treats all warnings as errors."
	@echo "  dirhtml    to make HTML files named index.html in directories"
	@echo "  singlehtml to make a single large HTML file"
	@echo "  pickle     to make pickle files"
	@echo "  json       to make JSON files"
	@echo "  htmlhelp   to make HTML files and a HTML help project"
	@echo "  qthelp     to make HTML files and a qthelp project"
	@echo "  applehelp  to make an Apple Help Book"
	@echo "  devhelp    to make HTML files and a Devhelp project"
	@echo "  epub       to make an epub"
	@echo "  latex      to make LaTeX files, you can set PAPER=a4 or PAPER=letter"
	@echo "  latexpdf   to make LaTeX files and run them through pdflatex"
	@echo "  latexpdfja to make LaTeX files and run them through platex/dvipdfmx"
	@echo "  text       to make text files"
	@echo "  man        to make manual pages"
	@echo "  texinfo    to make Texinfo files"
	@echo "  info       to make Texinfo files and run them through makeinfo"
	@echo "  gettext    to make PO message catalogs"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
	@echo "  xml        to make Docutils-native XML files"
	@echo "  pseudoxml  to make pseudoxml-XML files for display purposes"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  doctest    to run all doctests embedded in the documentation (if enabled)"
	@echo "  coverage   to run coverage check of the documentation (if enabled)"

.PHONY: clean
clean:
	cd end-user/en && make clean
	cd admin/en && make clean

.PHONY: html
html:
	cd end-user/en && make html
	cd admin/en && make html

.PHONY: htmlwerror
htmlwerror:
	cd end-user/en && make htmlwerror
	cd admin/en && make htmlwerror

.PHONY: dirhtml
dirhtml:
	cd end-user/en && make dirhtml
	cd admin/en && make dirhtml

.PHONY: singlehtml
singlehtml:
	cd end-user/en && make singlehtml
	cd admin/en && make singlehtml

.PHONY: pickle
pickle:
	cd end-user/en && make pickle
	cd admin/en && make pickle

.PHONY: json
json:
	cd end-user/en && make json
	cd admin/en && make json

.PHONY: htmlhelp
htmlhelp:
	cd end-user/en && make htmlhelp
	cd admin/en && make htmlhelp

.PHONY: qthelp
qthelp:
	cd end-user/en && make qthelp
	cd admin/en && make qthelp

.PHONY: applehelp
applehelp:
	cd end-user/en && make applehelp
	cd admin/en && make applehelp

.PHONY: devhelp
devhelp:
	cd end-user/en && make devhelp
	cd admin/en && make devhelp

.PHONY: epub
epub:
	cd end-user/en && make epub
	cd admin/en && make epub

.PHONY: latex
latex:
	cd end-user/en && make latex
	cd admin/en && make latex

.PHONY: latexpdf
latexpdf:
	cd end-user/en && make latexpdf
	cd admin/en && make latexpdf

.PHONY: latexpdfja
latexpdfja:
	cd end-user/en && make latexpdfja
	cd admin/en && make latexpdfja

.PHONY: text
text:
	cd end-user/en && make text
	cd admin/en && make text

.PHONY: man
man:
	cd end-user/en && make man
	cd admin/en && make man

.PHONY: texinfo
texinfo:
	cd end-user/en && make texinfo
	cd admin/en && make texinfo

.PHONY: info
info:
	cd end-user/en && make info
	cd admin/en && make info

.PHONY: gettext
gettext:
	cd end-user/en && make gettext
	cd admin/en && make gettext

.PHONY: changes
changes:
	cd end-user/en && make changes
	cd admin/en && make changes

.PHONY: linkcheck
linkcheck:
	cd end-user/en && make linkcheck
	cd admin/en && make linkcheck

.PHONY: doctest
doctest:
	cd end-user/en && make doctest
	cd admin/en && make doctest

.PHONY: coverage
coverage:
	cd end-user/en && make coverage
	cd admin/en && make coverage

.PHONY: xml
xml:
	cd end-user/en && make xml
	cd admin/en && make xml

.PHONY: pseudoxml
pseudoxml:
	cd end-user/en && make pseudoxml
	cd admin/en && make pseudoxml

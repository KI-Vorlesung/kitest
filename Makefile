
## Working directory
## In case this doesn't work, set the path manually (use absolute paths).
WORKDIR       = $(CURDIR)



## Pandoc
## (Defaults to docker. To use pandoc and TeX-Live directly, create an
## environment variable `PANDOC` pointing to the location of your
## pandoc installation.)
PANDOC       ?= docker run --rm -i -v $(WORKDIR):/pandoc debian-texlive pandoc



## Hugo
## (Defaults to docker. To use pandoc and TeX-Live directly, create an
## environment variable `PANDOC` pointing to the location of your
## pandoc installation.)
HUGO         ?= docker run --rm -it -v $(WORKDIR):/src klakegg/hugo



## Data-Dir: Path to the working copy of this repository (to be used as git sub-module)
## (Note: If pandoc is used via docker container, DATADIR must be the working directory
## or a subdirectory of the working directory, as the working directory is mounted in
## the docker container! A reference to the parent folder of the working directory like
## in this example will therefore not work when using the docker container!)
DATADIR       = .pandoc
RESDIR        = ".:figs:$(DATADIR)"



## Source files, path prefix to sources, and lecture prefix
## either defined here (all files) or given at cmd line like `make vl02`
MD            = md
SRC           = $(patsubst $(MD)/%.md,%,$(wildcard $(MD)/*.md))
ID            = ki



## Options
PANDOCOPTIONS       = --data-dir=$(DATADIR) --resource-path=$(RESDIR)
SLIDEOPTIONS        = $(PANDOCOPTIONS) --defaults=slides.yaml
HTMLOPTIONS         = $(PANDOCOPTIONS) --defaults=html.yaml
HTMLTEMPLATEOPTIONS = $(PANDOCOPTIONS) --defaults=htmltemplate.yaml



## Targets

all: $(SRC)

$(SRC): %: $(ID)_%.pdf $(ID)_%.html

hugo:
	$(HUGO)


## Auxiliary Targets

SLIDES        = $(SRC:%=$(ID)_%.pdf)
HTML          = $(SRC:%=$(ID)_%.html)
WEB           = $(WORKDIR)/docs

$(ID)_%.pdf: $(MD)/%.md
	$(PANDOC) $(SLIDEOPTIONS) -o $@ $<

$(ID)_%.html: $(MD)/%.md
	$(PANDOC) $(HTMLTEMPLATEOPTIONS) $< | $(PANDOC) $(HTMLOPTIONS) -o $@


clean:
	rm -rf $(SLIDES) $(HTML) $(WEB)


.PHONY: all clean hugo

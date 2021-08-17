## Tools
## In case this doesn't work, set the path manually (use absolute paths).
##
## Launch tools via a Docker/container: make TARGET
## Launch the tools directly (installed by default): make DOCKER="false" TARGET
ifndef DOCKER
PANDOC        = docker run --rm -i -v "$(shell pwd):/data" -w "/data" -u "$(shell id -u):$(shell id -g)" --entrypoint="pandoc" alpine-pandoc-hugo
HUGO          = docker run --rm -i -v "$(shell pwd):/data" -w "/data" -u "$(shell id -u):$(shell id -g)" --entrypoint="hugo" alpine-pandoc-hugo
LATEX         = docker run --rm -i -v "$(shell pwd):/data" -w "/data" -u "$(shell id -u):$(shell id -g)" --entrypoint="pdflatex" alpine-pandoc-hugo
else
PANDOC        = pandoc
HUGO          = hugo
LATEX         = pdflatex
endif


## Data-Dir: Path to the git submodule of Pandoc-Lecture
## Resource-Path: Where to search for bib files and other resources?
## (Note: If pandoc is used via a Docker container, DATADIR must be the
## working directory (or a subdirectory), as the working directory will
## be mounted into the Docker container! A reference to a parent directory
## of the working directory (as in this example) therefore does not work
## when using the Docker container!)
PANDOCDIRS    = --data-dir=pandoc --resource-path=".:pandoc"


## Source files, path prefix to sources, and lecture prefix
## either defined here (all files) or given at cmd line like `make vl02`
SRC_SLIDES    =
SRC_SLIDES   += tbd/testseite
SRC_SLIDES   += tbd/testseite
SRC_SLIDES   += tbd/testseite
SRC_SLIDES   += tbd/testseite
SRC_SLIDES   += tbd/testseite
SRC_SLIDES   += tbd/testseite

SRC_PRE       =
SRC_PRE      += tbd/testseite

SRC           = $(patsubst content/%/index.md,%,$(shell find content -type f -name 'index.md'))


## Targets

## create slides and web page
## run Pandoc and Hugo directly
.PHONY: all
all: $(SRC)

## create slides and web page
## use Docker image alpine-pandoc-hugo and run 'make all' inside the container
.PHONY: docker-all
docker-all:
	$(DOCKER) all

## create slides
SLIDEOPTIONS        = $(PANDOCDIRS) -d slides -f markdown+rebase_relative_paths
HTMLOPTIONS         = $(PANDOCDIRS) -d html -f markdown+rebase_relative_paths
HTMLTEMPLATEOPTIONS = $(PANDOCDIRS) -d htmltemplate

$(SRC): %: content/%/index.md pdf
	echo $(DOCKER)
	echo $(PANDOC)
	echo $@
	echo pdf/$(subst /,_,$@).pdf
	echo $(addsuffix .pdf,$(addprefix pdf/,$(subst /,_,$@)))
	echo $<


## Generates targets for all lecture pages.
## $1: lecture page (incl. sections)
## This allows for convenient tab completion.
#define page
#.PHONY: $(1)
#$(1): IFILE = content/$(1)/index.md
#$(1): OFILE = pdf/$(subst /,_,$(1)).pdf
#$(1): slides
#endef
## Generate convenience targets for all lectures.
#$(foreach lecture,$(SRC),$(eval $(call page,$(lecture))))


pdf:
	mkdir pdf/

.PHONY: slides
slides: pdf
	echo $(IFILE)
	echo $(OFILE)
	$(PANDOC) $(SLIDEOPTIONS) -o $(OFILE) $(IFILE)
#	$(PANDOC) $(HTMLOPTIONS) -o content/tbd/testseite/testseite.md content/tbd/testseite/index.md

## create web page
.PHONY: web
web:
	$(HUGO)



#$(SRC): %: $(ID)_%.pdf $(ID)_%.html


## Auxiliary Targets

SLIDES        = $(SRC:%=$(ID)_%.pdf)
HTML          = $(SRC:%=$(ID)_%.html)
WEB           = $(WORKDIR)/docs

$(ID)_%.pdf: $(MD)/%.md
	$(PANDOC) $(SLIDEOPTIONS) -o $@ $<

$(ID)_%.html: $(MD)/%.md
	$(PANDOC) $(HTMLTEMPLATEOPTIONS) $< | $(PANDOC) $(HTMLOPTIONS) -o $@


## build Docker image alpine-pandoc-hugo locally
.PHONY: docker-image
docker-image:
	cd .github/actions/alpine-pandoc-hugo && make clean all

## clean up
.PHONY: clean
clean:
	rm -rf $(SLIDES) $(HTML) $(WEB)

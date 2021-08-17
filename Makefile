## Tools
##
## Launching tools via a Docker container: make TARGET
## Launch the tools directly:              make DOCKER=false TARGET
##
## By default, a custom Docker image will be used. To create this
## image, run: make create-docker-image
ifndef DOCKER
PANDOC        = docker run --rm -i -v "$(shell pwd):/data" -w "/data" -u "$(shell id -u):$(shell id -g)" --entrypoint="pandoc"   alpine-pandoc-hugo
HUGO          = docker run --rm -i -v "$(shell pwd):/data" -w "/data" -u "$(shell id -u):$(shell id -g)" --entrypoint="hugo"     alpine-pandoc-hugo
LATEX         = docker run --rm -i -v "$(shell pwd):/data" -w "/data" -u "$(shell id -u):$(shell id -g)" --entrypoint="pdflatex" alpine-pandoc-hugo
else
PANDOC        = pandoc
HUGO          = hugo
LATEX         = pdflatex
endif


## Data-Dir: Path to the Git submodule of Pandoc-Lecture
## Resource-Path: Where to search for bib files and other resources?
##
## Note: If Pandoc is used via a Docker container, DATADIR must be the
## working directory or a subdirectory, as the working directory will
## be mounted into the Docker container! References to a parent directory
## of the working directory therefore will not work when using a Docker
## container!
PANDOC_DIRS   = --data-dir=pandoc --resource-path=".:pandoc"


## Some folder and file names
CONTENT = content
PDF     = pdf
DOCS    = docs
PAGE    = index.md


## Pages from which slide decks are to be created
##
## Use all sections and the page name, but leave out "content/" and "index.md".
## Example: "content/topic/subtopic/lecture/index.md" becomes "topic/subtopic/lecture"
##
## The "topic/subtopic/lecture" is also a make target for creating the slide desk
## for this page.
SLIDES    =
SLIDES   += tbd/testseite
SLIDES   += tbd/test2
SLIDES   += tbd/test4

SRC           = $(patsubst $(CONTENT)/%/$(PAGE),%,$(shell find $(CONTENT) -type f -name '$(PAGE)'))


## Targets

## Create slides and web page
.PHONY: all
all: slides web

## Create slides
.PHONY: slides
slides: $(PDF) $(SLIDES)

## Create web page
.PHONY: web
web:
	$(HUGO)


## Auxiliary targets

## Create actual slides
SLIDEOPTIONS = $(PANDOC_DIRS) -d slides -f markdown+rebase_relative_paths
$(SLIDES): %: $(CONTENT)/%/$(PAGE) $(PDF)
	echo "Pandoc: $(PANDOC)"
	echo "Ziel: $@"
	echo $(addsuffix .pdf,$(addprefix $(PDF)/,$(subst /,_,$@)))
	echo "Quelle: $<"
#	$(PANDOC) $(SLIDEOPTIONS) -o $@ $<

## Create folder "$(PDF)/"
$(PDF):
	mkdir $(PDF)

## Build Docker image "alpine-pandoc-hugo"
.PHONY: create-docker-image
create-docker-image:
	cd .github/actions/alpine-pandoc-hugo && make clean all

## Clean up
.PHONY: clean
clean:
	rm -rf $(PDF) $(DOCS)

## Tools
##
## Launching tools via a Docker container: make TARGET
## Launch the tools directly:              export DOCKER=false; make TARGET
##
## By default, a custom Docker image will be used. To create this
## image, run: make create-docker-image
##
## Note: LaTeX needs to be called in the folder of the .tex file to
## be processed. In the target "$(ALGORITHM)", the variable "$<" is
## set to the current .tex file (incl. path in the working directory).
## Therefore, the working directory for the Docker container is set
## to the folder of the current .tex file. When called directly, we
## need to first change-dir to this folder.
ifneq ($(DOCKER), false)
PANDOC        = docker run --rm -i -v "$(shell pwd):/data" -w "/data"          -u "$(shell id -u):$(shell id -g)" --entrypoint="pandoc" alpine-pandoc-hugo
HUGO          = docker run --rm -i -v "$(shell pwd):/data" -w "/data"          -u "$(shell id -u):$(shell id -g)" --entrypoint="hugo"   alpine-pandoc-hugo
LATEX         = docker run --rm -i -v "$(dir $(realpath $<)):/data" -w "/data" -u "$(shell id -u):$(shell id -g)" --entrypoint="latex"  alpine-pandoc-hugo
else
PANDOC        = pandoc
HUGO          = hugo
LATEX         = cd $(dir $<) && latex
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


## Define options for generating image from ".tex" file
LATEX_ARGS = -shell-escape


## Some folder and file names
CONTENT = content
PAGE    = index.md
PDF     = pdf
DOCS    = docs


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


## LaTeX files
## Find all ".tex" files and translate them with LaTeX to ".png"
ALGORITHM  = $(patsubst %.tex,%.png,$(shell find $(CONTENT) -type f -name '*.tex'))


## Targets

## Create slides and web page
.PHONY: all
all: slides web

## Create slides
.PHONY: slides
slides: $(ALGORITHM) $(PDF) $(SLIDES)

## Create web page
.PHONY: web
web: $(ALGORITHM) hugo


## Auxiliary targets

## Create actual slides without any pre-processing
## Any necessary pre-processing steps should already be done in the calling step!
$(SLIDES): %: $(CONTENT)/%/$(PAGE) $(PDF)
	$(PANDOC) $(PANDOC_DIRS) -d slides $< -o $(addsuffix .pdf,$(addprefix $(PDF)/,$(subst /,_,$@)))

## Create folder "$(PDF)/"
$(PDF):
	mkdir $(PDF)

## Create actual website without any pre-processing
## Any necessary pre-processing steps should already be done in the calling step!
.PHONY: hugo
hugo:
	$(HUGO)

## Process stand-alone LaTeX files
$(ALGORITHM): %.png: %.tex
	$(LATEX) $(LATEX_ARGS) $(notdir $<)

## Build Docker image "alpine-pandoc-hugo"
.PHONY: create-docker-image
create-docker-image:
	cd .github/actions/alpine-pandoc-hugo && make clean all

## Clean up LaTeX mess
.PHONY: clean_algo
clean_algo:
	rm -rf $(patsubst %.png,%.aux,$(ALGORITHM))
	rm -rf $(patsubst %.png,%.dvi,$(ALGORITHM))
	rm -rf $(patsubst %.png,%.log,$(ALGORITHM))
	rm -rf $(patsubst %.png,%.ps,$(ALGORITHM))
	rm -rf $(ALGORITHM)

## Clean up
.PHONY: clean
clean: clean_algo
	rm -rf $(PDF) $(DOCS)

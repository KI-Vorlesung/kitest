#!/bin/sh

## Install extra packages for Beamer/Metropolis
tlmgr install beamertheme-metropolis pgfopts tcolorbox environ || exit 1

## Install Hugo and make and graphviz (dot)
apk --no-cache add hugo make git bash graphviz || exit 1

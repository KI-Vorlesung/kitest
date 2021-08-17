FROM pandoc/latex:latest

RUN tlmgr install beamertheme-metropolis pgfopts tcolorbox environ
RUN apk --no-cache add hugo make git bash graphviz

ENTRYPOINT ["sh"]

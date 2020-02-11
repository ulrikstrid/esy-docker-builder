FROM ulrikaugustsson/esy:latest

ARG ocaml_version=4.9.0

ENV TERM=dumb LD_LIBRARY_PATH=/usr/local/lib:/usr/lib:/lib

RUN mkdir /tmp/app
WORKDIR /tmp/app

RUN echo ' \
    {\
    "name": "package-base", \
    "dependencies": { \
    "ocaml": "~'"$ocaml_version"'", \
    "@opam/dune": ">= 2.0.0", \
    "@opam/conf-libssl": "*" \
    }, \
    "resolutions": { \
    "@opam/conf-libssl": "esy-packages/esy-openssl#648930f" \
    } \
    } \
    ' > esy.json

RUN cat esy.json

RUN esy

# Deprecated

The goal of this repo was to produce pre-built containers for `esy` and web development using it.
There's a new effort here that will be supported in the near future:

https://github.com/reason-native-web/docker

# esy-docker-builder

[![Build Status](https://dev.azure.com/strid/esy-docker-builder/_apis/build/status/ulrikstrid.esy-docker-builder?branchName=master)](https://dev.azure.com/strid/esy-docker-builder/_build/latest?definitionId=40&branchName=master)

This repos purpose is to provide prebuilt docker images that can be a good starting point for esy development.
We prebuild some packages to shorten the build cycle.

Currently included packages are:

- `ocaml`
- `dune`
- `esy-openssl` (as `conf-libssl`)

The generated `esy.json` looks as follows:

```json
{
  "name": "package-base",
  "dependencies": {
    "ocaml": "~<GIT_TAG>",
    "@opam/dune": ">= 2.0.0",
    "@opam/conf-libssl": "*"
  },
  "resolutions": {
    "@opam/conf-libssl": "esy-packages/esy-openssl#648930f"
  }
}
```

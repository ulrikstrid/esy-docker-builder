# esy-docker-builder

This repos purpose is to provide prebuilt docker images that can be a good starting point for esy development.
We prebuild some packages to shorten the build cycle.

Currently included packages are:
* `ocaml`
* `dune`
* `esy-openssl` (as `conf-libssl`)

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

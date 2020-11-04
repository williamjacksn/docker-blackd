# docker-blackd

A Docker image for [psf/black#blackd][a].

[a]: https://github.com/psf/black#blackd

```sh
docker image pull ghcr.io/williamjacksn/blackd
```

This image is also available [on Docker Hub][b] as `williamjackson/blackd`.

[b]: https://hub.docker.com/r/williamjackson/blackd

## Usage

```sh
docker container run \
    -p 45484:45484 \
    ghcr.io/williamjacksn/blackd
```

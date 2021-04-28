**This repository is no longer maintained.** The Python Software Foundation provides a Docker image for Black. Use it like this:

```sh
docker container run \
    -p 45484:45484 \
    --entrypoint /usr/local/bin/blackd \
    pyfound/black \
    --bind-host 0.0.0.0 \
    --bind-port 45484
```

# docker-blackd

A Docker image for [psf/black#blackd][a].

[a]: https://github.com/psf/black#blackd

```sh
docker image pull ghcr.io/williamjacksn/blackd
```

## Usage

```sh
docker container run \
    -p 45484:45484 \
    ghcr.io/williamjacksn/blackd
```

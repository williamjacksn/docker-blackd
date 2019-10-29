# docker-blackd

A Docker image for [psf/black#blackd][a].

[a]: https://github.com/psf/black#blackd

```sh
docker image pull williamjackson/blackd
```

## Available tags

* `latest` &rarr; `19.10b0`
* `19.3b0`
* `18.9b0`

## Usage

```sh
docker container run \
    -p 45484:45484 \
    williamjackson/blackd
```

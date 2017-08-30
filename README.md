# youtube-dl docker image

[![Docker Pulls](https://img.shields.io/docker/pulls/symm/youtube-dl.svg)](https://hub.docker.com/r/symm/youtube-dl/)

## Usage

Exactly the same as the [binary version](https://github.com/rg3/youtube-dl) except in a container

You'll want to mount the `/downloads` dir as a volume to persist any downloads e.g

```
docker run \
    --rm \
    -v $(PWD)/downloads:/downloads \
    symm/youtube-dl \
    https://www.youtube.com/watch?v=64Qq31ucGy0
```

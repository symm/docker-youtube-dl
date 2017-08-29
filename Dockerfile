FROM alpine:3.6

RUN apk add --no-cache \
    youtube-dl \
    ca-certificates

RUN mkdir /downloads
WORKDIR /downloads

VOLUME ["/downloads"]

ENTRYPOINT ["youtube-dl"]

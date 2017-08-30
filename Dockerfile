FROM alpine:3.6

RUN echo "@commuedge http://dl-3.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk add --no-cache \
    ca-certificates \
    youtube-dl@commuedge=2017.08.27.1-r0


RUN mkdir /downloads
WORKDIR /downloads

VOLUME ["/downloads"]

ENTRYPOINT ["youtube-dl"]

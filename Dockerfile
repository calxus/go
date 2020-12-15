FROM alpine:3.12

MAINTAINER gtadam@protonmail.ch

ENV GOROOT /usr/lib/go
ENV GOPATH /go/src

RUN apk add --no-cache go && \
    mkdir -p ${GOPATH}

WORKDIR $GOPATH
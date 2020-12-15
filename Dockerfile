FROM alpine:3.12

MAINTAINER gtadam@protonmail.ch

ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:$PATH

RUN apk add --no-cache go && \
    mkdir -p ${GOPATH}/src ${GOPATH}/bin

WORKDIR $GOPATH
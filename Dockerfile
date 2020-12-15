FROM alpine:3.12

MAINTAINER gtadam@protonmail.ch

ENV GOROOT /usr/lib/go
ENV GOPATH /go

RUN apk add --no-cache git go && \
    mkdir -p ${GOPATH}/src

WORKDIR $GOPATH/src

ENTRYPOINT ["go"]
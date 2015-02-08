FROM golang:1.4

ADD . /go/src/app
WORKDIR /go/src/app
RUN go get github.com/mitchellh/gox && gox -build-toolchain

FROM golang:1.19.3
WORKDIR /go/src

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
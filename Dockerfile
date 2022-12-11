FROM golang:1.19.3
WORKDIR /go/src

RUN go install github.com/cosmtrek/air@latest
COPY go.mod go.sum ./
RUN go mod tidy

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
RUN ["apt-get", "install", "-y", "curl"]

CMD ["air"]

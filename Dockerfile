FROM golang:alpine

WORKDIR /go/src/app
COPY . .

RUN go mod init postalgo
RUN go mod vendor

CMD ["app"]
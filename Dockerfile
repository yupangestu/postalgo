FROM golang:1.14

WORKDIR /go/src/app
COPY . .

RUN go get -u github.com/gin-gonic/gin

CMD ["app"]
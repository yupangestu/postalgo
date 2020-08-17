FROM golang:1.14

WORKDIR /go/src/app
COPY . .

RUN go get -u github.com/gin-gonic/gin
RUN go get github.com/canthefason/go-watcher
RUN go install github.com/canthefason/go-watcher/cmd/watcher

EXPOSE 8080

CMD ["watcher"]
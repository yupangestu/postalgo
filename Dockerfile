FROM golang:1.14

WORKDIR /go/src/app
COPY . .

RUN go get -u github.com/gin-gonic/gin
RUN go get github.com/githubnemo/CompileDaemon

EXPOSE 8080

ENTRYPOINT CompileDaemon -directory=/go/src/app --build="go build main.go" --command="go run main.go"
FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/github/ChurchTao/blog-service-go
COPY . $GOPATH/src/github/ChurchTao/blog-service-go
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./blog-service-go"]

FROM golang:1.20

WORKDIR /app

COPY go.mod go.sum .

COPY main.go .

RUN go mod tidy

RUN go build -o main .

ENTRYPOINT ["/app/main"]
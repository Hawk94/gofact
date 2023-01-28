# Build the cipher service binary
FROM golang:1.19-alpine as base

# add the working directory for the project
WORKDIR /app

COPY go.mod go.mod
RUN go mod download

# Copy the service code
COPY cmd/main cmd/main
COPY pkg/app pkg/app

RUN go build -o bin/app ./cmd/main

EXPOSE 8080

CMD ["./bin/app"]

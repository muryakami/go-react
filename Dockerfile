# Build the Go API
FROM golang:latest
ADD . /app
WORKDIR /app/server

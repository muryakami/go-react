# Build the Go API
FROM golang:latest AS builder
ADD ./server /app/server
WORKDIR /app/server
EXPOSE 9000
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-w" -a -o /main .

# Build the React application
FROM node:alpine AS node_builder
ADD ./client /client
EXPOSE 9001
RUN npm install
RUN npm run build

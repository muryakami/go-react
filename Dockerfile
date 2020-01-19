# Build the Go API
FROM golang:latest AS builder
ADD ./server /app/server
WORKDIR /app/server
EXPOSE 9000

# Build the React application
FROM node:alpine AS node_builder
ADD ./client /client
EXPOSE 9001

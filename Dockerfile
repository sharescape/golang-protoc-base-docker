FROM golang:1.15-alpine as base
LABEL maintainer="Christian Nieves <c.nieves@marrickdevelopment.com>"
WORKDIR /app

# system setup
RUN apk update && apk add git protobuf protobuf-dev protoc make

# intall protoc-gen-{go,swagger,gateway,micro}
RUN GO111MODULE="on" go get -u \
    github.com/golang/protobuf/protoc-gen-go \
    github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
    github.com/asim/go-micro/cmd/protoc-gen-micro/v3

#RUN GO111MODULE="on" go install \
    #github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway \
    #github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger

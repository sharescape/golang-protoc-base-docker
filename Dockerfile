ARG ARCH=
FROM ${ARCH}golang:1.19-alpine as base
LABEL maintainer="Omar Martinez <o.martinez@marrickdevelopment.com>"
WORKDIR /app

# system setup
RUN apk update && apk add git protobuf protobuf-dev protoc make

COPY . .
RUN go mod tidy
RUN go install \
    github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway \
    github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2 \
    github.com/asim/go-micro/cmd/protoc-gen-micro/v3 \
    google.golang.org/protobuf/cmd/protoc-gen-go \
    google.golang.org/grpc/cmd/protoc-gen-go-grpc

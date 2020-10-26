# Go Base Image with proto3
Docker imaged based on `golang:1.13-alpine` with protobuf tooling installed.

Includes the following protoc plugins: 
 - github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway
 - github.com/golang/protobuf/protoc-gen-go
 - github.com/micro/micro/v2/cmd/protoc-gen-micro
 - github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger

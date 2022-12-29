# Go Base Image with proto3
Docker imaged based on `golang:1.19-alpine` with protobuf tooling installed.

```sh
docker pull sharescape/golang-protoc-base-docker
```

This can be used as a base image for container's using: 
 - https://github.com/micro/micro
 - https://github.com/grpc-ecosystem/grpc-gateway
 - Vanilla gRPC

Includes the following protoc plugins: 
 - github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway
 - github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2
 - github.com/asim/go-micro/cmd/protoc-gen-micro/v3
 - google.golang.org/protobuf/cmd/protoc-gen-go
 - google.golang.org/grpc/cmd/protoc-gen-go-grpc

# Docker Hub
<https://hub.docker.com/repository/docker/sharescape/golang-protoc-base-docker>

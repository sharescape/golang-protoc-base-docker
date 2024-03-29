build:
	docker build -t sharescape/golang-protoc-base-docker:manifest-amd64 --build-arg ARCH=amd64/ .
	docker push sharescape/golang-protoc-base-docker:manifest-amd64
	\
	docker build -t sharescape/golang-protoc-base-docker:manifest-arm64v8 --build-arg ARCH=arm64v8/ .
	docker push sharescape/golang-protoc-base-docker:manifest-arm64v8
	\
	docker build -t sharescape/golang-protoc-base-docker:manifest-arm32v7 --build-arg ARCH=arm32v7/ .
	docker push sharescape/golang-protoc-base-docker:manifest-arm32v7
	\
	docker manifest create \
	sharescape/golang-protoc-base-docker:latest \
	--amend sharescape/golang-protoc-base-docker:manifest-amd64 \
	--amend sharescape/golang-protoc-base-docker:manifest-arm32v7 \
	--amend sharescape/golang-protoc-base-docker:manifest-arm64v8
	\
	docker manifest push sharescape/golang-protoc-base-docker:latest

buildx:
	docker buildx build \
		--tag sharescape/golang-protoc-base-docker:latest \
		--platform linux/amd64,linux/arm/v7,linux/arm64 .

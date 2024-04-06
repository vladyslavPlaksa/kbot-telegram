APP := $(shell basename $(shell git remote get-url origin))
REGISTRY := vladyslavplaksa
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux #linux darwin windows
TARGETARCH=arm64 #amd64 arm64

format:
	gofmt -s -w ./

get:
	go get

lint: 
	golint

test:
	go test -v

build: format get
	CGO_ENABLED=0 GOOS=${TARGET} GOARCH=${TARGETARCH} go build -v -o ${APP} -ldflags "-X="github.com/vladyslavPlaksa/kbot-telegram/cmd.appVersion=${VERSION}

image:
	docker build . -t ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH} --build-arg TARGETARCH=${TARGETARCH}

push:
	docker push ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}


clean:
	rm -rf ${APP}
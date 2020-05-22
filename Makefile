IMG ?= simple-server:latest

.PHONY: all build build-static build-in-docker docker-build

all: build

build:
	gcc ./main.cpp -o main -lstdc++ -lpthread

build-static:
	gcc ./main.cpp -o main -lstdc++ -lpthread -static

build-in-docker:
	docker run -it \
		-v $(shell pwd):/usr/src/myapp \
		-w /usr/src/myapp \
		gcc:9 \
		make build-static

# this target is just a bonus
docker-build:
	docker build . -t ${IMG}

#docker-run:
#	docker run -it --rm -p 9999:9999 ${IMG} server tcp 0 9999


.PHONY: all build testrun push

all: build

build: Dockerfile
	docker build -t sthysel/haxornews .

testrun:
	docker run -it --rm sthysel/haxornews

push:
	docker push sthysel/haxornews


all: build
include .env

build:
	docker build --pull -t ${TAG} .
push:
	docker push ${TAG}
scan:
	docker scan ${TAG}

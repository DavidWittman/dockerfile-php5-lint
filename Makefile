NAME ?= wittman/php5-lint
TAG ?= latest

.PHONY: all
all: build push

.PHONY: build
build:
	docker build -t $(NAME):$(TAG) .

.PHONY: push
push:
	docker push $(NAME):$(TAG)

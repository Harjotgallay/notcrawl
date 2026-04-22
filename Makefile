BINARY ?= bin/notioncrawl

.PHONY: build test run fmt

build:
	go build -o $(BINARY) ./cmd/notioncrawl

test:
	go test ./...

run:
	go run ./cmd/notioncrawl $(ARGS)

fmt:
	gofmt -w $$(find . -name '*.go' -not -path './.git/*')

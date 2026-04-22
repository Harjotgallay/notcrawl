BINARY ?= bin/notioncrawl

.PHONY: build test run fmt release-notes

build:
	go build -o $(BINARY) ./cmd/notioncrawl

test:
	go test ./...

run:
	go run ./cmd/notioncrawl $(ARGS)

fmt:
	gofmt -w $$(find . -name '*.go' -not -path './.git/*')

release-notes:
	@test -n "$(TAG)" || (echo "usage: make release-notes TAG=v0.1.0" >&2; exit 2)
	scripts/release-notes.sh "$(TAG)"

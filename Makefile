OUT := out
VER := $(shell cat ./VERSION)

.PHONY: test
test::
	go test -v -race ./...

ledctl::
	./scripts/build.sh ${OUT}/ledctl cmd/ledctl/main.go

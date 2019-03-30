#!/usr/bin/env bash

set -ex

OUT=$1
BUILDPATH=$2
GOOS=${GOOS:-linux}
GOARCH=${GOARCH:-amd64}

export CGO_ENABLED=0

time GOOS=${GOOS} GOARCH=${GOARCH} go build -o ${OUT} "${BUILDPATH}"

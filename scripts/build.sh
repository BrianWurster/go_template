#!/bin/bash

source ./scripts/defines.sh

# create BUILD_DIR if it doesn't exist
if [[ ! -d "${BUILD_DIR}" ]]; then
    mkdir ${BUILD_DIR}
fi

# https://pkg.go.dev/cmd/go
# go help build
# go tool link

debug() {
    printf "Build configuration: DEBUG\n"
    go build -o ${BUILD_DIR}${BIN_NAME} ./cmd
}

release() {
    printf "Build configuration: RELEASE\n"
    go build -trimpath -ldflags="-s -w" -o ${BUILD_DIR}${BIN_NAME} ./cmd
}

if [[ $# -le 0 ]]; then
    release
else
    if [[ $1 == "DEBUG" ]]; then
        debug
    else
        release
    fi
fi
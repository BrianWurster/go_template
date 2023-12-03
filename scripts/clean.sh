#!/bin/bash

source ./scripts/defines.sh

if [[ -d "${BUILD_DIR}" ]]; then
    rm -r "./${BUILD_DIR}"
fi
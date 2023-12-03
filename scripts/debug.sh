#!/bin/bash

source ./scripts/defines.sh

dlv debug "${GO_MODULE_NAME}/cmd" --init <(echo b main.main)
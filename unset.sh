#!/bin/bash

# https://qiita.com/koara-local/items/2d67c0964188bba39e29
SCRIPT_DIR=$(cd $(dirname $0); pwd)

`echo "${SCRIPT_DIR}"`/unsetbashrc.sh
`echo "${SCRIPT_DIR}"`/unsetinputrc.sh
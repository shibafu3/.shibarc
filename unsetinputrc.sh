#!/bin/bash

# https://qiita.com/koara-local/items/2d67c0964188bba39e29
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# https://ex1.m-yabe.com/archives/3626
# https://maku77.github.io/sed/sed/delete-matched-lines.html
UNSET_INPUTRC="set completion-ignore-case on"
if grep -q "${UNSET_INPUTRC}" ~/.inputrc; then
    sed -i "/${UNSET_INPUTRC}/d" ~/.inputrc
    echo "Unset \"${UNSET_INPUTRC}\" from \"${HOME}/.inputrc\"."
else
    echo "No Setting \"${UNSET_INPUTRC}\" in \"${HOME}/.inputrc\"."
fi
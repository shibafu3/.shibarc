#!/bin/bash

# https://qiita.com/koara-local/items/2d67c0964188bba39e29
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# https://www.atmarkit.co.jp/ait/articles/1610/13/news015.html#sample1
SET_BASHRC="source ${SCRIPT_DIR}/bashrc/bashrc"
if grep -q "${SET_BASHRC}" ~/.bashrc; then
    echo "Already setted \"${SET_BASHRC}\" in \"${HOME}/.bashrc\"."
else
    sed -i '$a'"${SET_BASHRC}" ~/.bashrc
    echo "Set \"${SET_BASHRC}\" to \"${HOME}/.bashrc\"."
fi
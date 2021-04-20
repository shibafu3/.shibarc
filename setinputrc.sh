#!/bin/bash

# https://qiita.com/koara-local/items/2d67c0964188bba39e29
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# https://ex1.m-yabe.com/archives/3623
SET_INPUTRC="set completion-ignore-case on"
if grep -q "${SET_INPUTRC}" ~/.inputrc; then
    echo "Already setted \"${SET_INPUTRC}\" in \"${HOME}/.inputrc\"."
else
    if [ ! -s ~/.inputrc ]; then
    #空の場合の処理
    echo "${SET_INPUTRC}" >> ~/.inputrc
    else
    # 0byte 以上の処理
    sed -i '$a'"${SET_INPUTRC}" ~/.inputrc
    fi
    echo "Set \"${SET_INPUTRC}\" to \"${HOME}/.inputrc\"."
fi
#!/bin/bash

# https://qiita.com/koara-local/items/2d67c0964188bba39e29
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# https://ex1.m-yabe.com/archives/3626
# https://maku77.github.io/sed/sed/delete-matched-lines.html
UNSET_BASHRC=`echo "source\ ${SCRIPT_DIR}/bashrc/bashrc" | sed -e 's@\/@\\\/@g'`
if grep -q "source ${SCRIPT_DIR}/bashrc/bashrc" ~/.bashrc; then
    sed -i "/${UNSET_BASHRC}/d" ~/.bashrc
    echo "Unset \"source ${SCRIPT_DIR}/bashrc/bashrc\" from \"${HOME}/.bashrc\"."
else
    echo "No Setting \"source ${SCRIPT_DIR}/bashrc/bashrc\" in \"${HOME}/.bashrc\"."
fi
#!/bin/bash

set -ex

export CFLAGS="$CFLAGS -std=c99 -L$CONDA_PREFIX/include"
echo $CFLAGS

python -m pip install . \
    --no-deps \
    --ignore-installed \
    --no-cache-dir \
    -vvv

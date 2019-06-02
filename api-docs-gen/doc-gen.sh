#!/usr/bin/env bash

source `dirname $0`/config.sh

rm -rf $DESTINATION

cd $BASE/..

./node_modules/.bin/compodoc \
        -p tsconfig.json \
        -d $DESTINATION \
        "$@"

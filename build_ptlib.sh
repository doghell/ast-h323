#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`

cd "${SRC_BASE}/ptlib"

./configure

make opt

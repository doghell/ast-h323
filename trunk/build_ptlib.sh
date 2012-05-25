#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
if [ -n "${1}" ]; then
	BUILD_TYPE=debug
else
	BUILD_TYPE=opt
fi
                
cd "${SRC_BASE}/ptlib"

./configure

make ${BUILD_TYPE}

#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
if [ -n "${1}" ]; then
	BUILD_TYPE=debug
else
	BUILD_TYPE=opt
fi

export PATH="${HOME}/bin:${PATH}"

[ -n "${2}" ] && INSTALL_PREFIX="--prefix=${2}"
                        
cd "${SRC_BASE}/ptlib"

./configure \
	${INSTALL_PREFIX}

make ${BUILD_TYPE}

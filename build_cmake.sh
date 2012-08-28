#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
[ -n "${2}" ] && INSTALL_PREFIX="--prefix=${2}"

export PATH="${HOME}/bin:${PATH}"

cd "${SRC_BASE}/cmake"

./configure \
	${INSTALL_PREFIX}

make

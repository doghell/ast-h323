#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
if [ -n "${1}" ]; then
	BUILD_TYPE=debug
else
	BUILD_TYPE=opt
fi

export PATH="${HOME}/bin:${PATH}"
export PTLIBDIR="${SRC_BASE}/ptlib"
export SPANDSPDIR="${SRC_BASE}/spandsp"
export CXXFLAGS="-I${SPANDSPDIR}/src -I${PTLIBDIR}/include"
export CFLAGS="${CXXFLAGS}"
export LDFLAGS="-L${SPANDSPDIR}/src/.libs -L${PTLIBDIR}/lib_linux_x86${ARCH_SUFFIX} -L${OPALDIR}/lib"

K_DIR1=/usr/src/kernels/`uname -r`-`uname -m`/include
K_DIR2=/usr/src/kernels/`uname -r`/include

[ -d $K_DIR1 ] && export CXXFLAGS="${CXXFLAGS} -I$K_DIR1"
[ -d $K_DIR2 ] && export CXXFLAGS="${CXXFLAGS} -I$K_DIR2"
[ -n "${2}" ] && INSTALL_PREFIX="--prefix=${2}"

cd "${SRC_BASE}/opal"

./configure \
        ${INSTALL_PREFIX} \
        --enable-plugins \
        --enable-spandsp

make ${BUILD_TYPE}

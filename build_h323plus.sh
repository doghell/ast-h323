#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
if [ "${1}" == "debug" ]; then
	BUILD_TYPE=debug
else
	BUILD_TYPE=opt
fi

export SPANDSPDIR="${SRC_BASE}/spandsp"
export PTLIBDIR="${SRC_BASE}/ptlib"

export CXXFLAGS="-I${SPANDSPDIR}/src"
export CFLAGS="${CXXFLAGS}"
export LDFLAGS="-L${SPANDSPDIR}/src/.libs"

K_DIR1=/usr/src/kernels/`uname -r`-`uname -m`/include
K_DIR2=/usr/src/kernels/`uname -r`/include

[ -d $K_DIR1 ] && export CXXFLAGS="${CXXFLAGS} -I$K_DIR1"
[ -d $K_DIR2 ] && export CXXFLAGS="${CXXFLAGS} -I$K_DIR2"
[ -n "${2}" ] && INSTALL_PREFIX="--prefix=${2}"
# H460.19 is not supported on FreeBSD (I don't know why). At least on my test box with FreeBSD 7.2.
[ "`uname`" == "FreeBSD" ] && H460_19M="--disable-h46019m"

cd "${SRC_BASE}/h323plus"
		
./configure \
        ${INSTALL_PREFIX} \
	--enable-h4609 \
	--enable-h46017 \
	--enable-h46018 \
	${H460_19M} \
	--enable-h46023 \
	--enable-h460p \
	--disable-gnugk \
	--enable-spandsp

gmake ${BUILD_TYPE}

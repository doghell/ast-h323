#!/bin/bash

SRC_BASE=`pwd`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
[ "${HOSTTYPE}" == "x86_64" ] && ARCH_SUFFIX="_64"

export PATH="${HOME}/bin:${PATH}"
export SPANDSPDIR="${SRC_BASE}/spandsp"
export PWLIBDIR="${SRC_BASE}/ptlib"
export OPENH323DIR="${SRC_BASE}/h323plus"

export CPPFLAGS="-I${SPANDSPDIR}/src -I${PWLIBDIR}/include -I${OPENHH323DIR}/include"
export CFLAGS="${CPPFLAGS} -fexceptions"
export LDFLAGS="-L${SPANDSPDIR}/src/.libs -L${PWLIBDIR}/lib_linux_x86${ARCH_SUFFIX} -L${OPENH323DIR}/lib"

cd "${SRC_BASE}/asterisk"

[ -f configure ] || ./bootstrap.sh

[ -n "${2}" ] && INSTALL_PREFIX="--prefix=${2}"

./configure \
	${INSTALL_PREFIX} \
	--with-spandsp \
	--with-pwlib=${PWLIBDIR} \
	--with-h323=${OPENH323DIR}

make

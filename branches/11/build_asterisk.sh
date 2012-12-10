#!/bin/bash

SRC_BASE=`pwd`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
[ "${HOSTTYPE}" == "x86_64" ] && ARCH_SUFFIX="_64"

export CURLDIR="${SRC_BASE}/curl"
export SQLITEDIR="${SRC_BASE}/sqlite"
export SPANDSPDIR="${SRC_BASE}/spandsp"
export PWLIBDIR="${SRC_BASE}/ptlib"
export OPENH323DIR="${SRC_BASE}/h323plus"

export LDFLAGS="-L${CURLDIR}/lib/.libs -L${SQLITEDIR}/.libs -L${SPANDSPDIR}/src/.libs -L${PWLIBDIR}/lib_linux_x86${ARCH_SUFFIX} -L${OPENH323DIR}/lib"
export CPPFLAGS="-I${CURLDIR}/include -I${SQLITEDIR} -I${SPANDSPDIR}/src -I${PWLIBDIR}/include -I${OPENHH323DIR}/include"
if [ "`uname`" != "Linux" ]; then
	export CPPFLAGS="${CPPFLAGS} ${LDFLAGS}"
fi
export CFLAGS="${CPPFLAGS} -fexceptions"

cd "${SRC_BASE}/asterisk"

[ -f configure ] || ./bootstrap.sh

[ -n "${2}" ] && INSTALL_PREFIX="--prefix=${2}"

./configure \
	${INSTALL_PREFIX} \
	--with-spandsp \
	--with-pwlib=${PWLIBDIR} \
	--with-h323=${OPENH323DIR}

gmake

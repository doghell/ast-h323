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
export H323PLUSDIR="${SRC_BASE}/h323plus"
export PWLIBDIR=${PTLIBDIR}
export OPENH323DIR=${H323PLUSDIR}

[ -n "${2}" ] && INSTALL_PREFIX="--prefix=${2}"
        
cd "${SRC_BASE}/gnugk"

./configure \
	${INSTALL_PREFIX} \
	--enable-radius \
	--enable-h46017 \
	--enable-h46018 \
	--enable-h46023 \
	--disable-mysql \
	--disable-pgsql \
	--disable-firebird \
	--disable-unixodbc \
	--disable-sqlite \
	--with-large-fdset=8192

make ${BUILD_TYPE}

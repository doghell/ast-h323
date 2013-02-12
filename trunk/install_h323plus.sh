#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`

ARC=`uname -m`
[ "${ARC}" == "x86_64" ] || ARC=x86

cd "${SRC_BASE}/h323plus"

gmake install || exit 1
if [ "`uname`" == "Linux" ]; then
	cp -vf --no-dereference lib/libh323_linux_${ARC}__d* ${HOME}/lib
else
	cp -vfR lib/libh323_*_${ARC}__d* ${HOME}/lib
fi

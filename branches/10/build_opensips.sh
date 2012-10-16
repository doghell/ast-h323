#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
if [ "${1}" == "debug" ]; then
	BUILD_TYPE="mode=debug"
else
	BUILD_TYPE=
fi

[ -n "${2}" ] && INSTALL_PREFIX="prefix=${2}"
                        
cd "${SRC_BASE}/opensips"

gmake ${BUILD_TYPE} TLS=1 all

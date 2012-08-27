#!/bin/bash

SRC_BASE=`pwd`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`

if [ -z "${1}" ]; then
	${SRC_BASE}/get-basic.sh
else
	${SRC_BASE}/get-${1}.sh
fi

TOOLS=`cat ${SRC_BASE}/tools`

for TOOL in ${TOOLS}; do
	${SRC_BASE}/build-debug.sh ${TOOL}
	${SRC_BASE}/install.sh ${TOOL}
done

${SRC_BASE}/build-debug.sh
${SRC_BASE}/install.sh

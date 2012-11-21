#!/bin/bash

SRC_BASE=`pwd`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
[ -z "${1}" ] || EXTENDED=yes

if [ "${EXTENDED}" != "yes" ]; then
	TOOLS=`cat ${SRC_BASE}/tools_basic`
else
	TOOLS=`cat ${SRC_BASE}/tools_extended`
fi

for TOOL in ${TOOLS}; do
	${SRC_BASE}/get.sh ${TOOL}
	${SRC_BASE}/build.sh ${TOOL}
	${SRC_BASE}/install.sh ${TOOL}
done

if [ "${EXTENDED}" != "yes" ]; then
	${SRC_BASE}/get-basic.sh
else
	${SRC_BASE}/get-extended.sh
fi

${SRC_BASE}/build.sh
${SRC_BASE}/install.sh

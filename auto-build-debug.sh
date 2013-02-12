#!/bin/bash

SRC_BASE=`pwd`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
[ -n "${1}" ] && EXTENDED=yes

if [ "${EXTENDED}" != "yes" ]; then
	TOOLS=`cat ${SRC_BASE}/tools_basic`
else
	TOOLS=`cat ${SRC_BASE}/tools_extended`
fi

for TOOL in ${TOOLS}; do
	${SRC_BASE}/get.sh ${TOOL} || exit 1
	${SRC_BASE}/build-debug.sh ${TOOL} || exit 1
	${SRC_BASE}/install.sh ${TOOL} || exit 1
done

if [ "${EXTENDED}" != "yes" ]; then
	${SRC_BASE}/get-basic.sh || exit 1
else
	${SRC_BASE}/get-extended.sh || exit 1
fi

${SRC_BASE}/build-debug.sh || exit 1
if [ -x "${SRC_BASE}/pre-install.sh" ]; then
	${SRC_BASE}/pre-install.sh || exit 1
fi
${SRC_BASE}/install.sh || exit 1

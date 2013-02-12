#!/bin/bash

SRC_BASE=`pwd`
PACKAGE_LIST=$1
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
[ -n "${PACKAGE_LIST}" ] || PACKAGE_LIST=`cat ${SRC_BASE}/package_list`

export PATH="${HOME}/bin:${PATH}"

for PACKAGE in ${PACKAGE_LIST}; do
	if [ -h "${PACKAGE}" -a -x "${SRC_BASE}/build_${PACKAGE}.sh" ]; then
		echo -e "\nBuilding '${PACKAGE}'...\n"
		${SRC_BASE}/build_${PACKAGE}.sh opt ${HOME} || exit 1
	fi
done

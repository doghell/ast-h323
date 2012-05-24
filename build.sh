#!/bin/bash

SRC_BASE=`pwd`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
PACKAGE_LIST=`cat package_list`

for PACKAGE in ${PACKAGE_LIST}; do
	if [ -h "${PACKAGE}" ]; then
		echo -e "\nBuilding '${PACKAGE}'...\n"
		${SRC_BASE}/build_${PACKAGE}.sh
	fi
done

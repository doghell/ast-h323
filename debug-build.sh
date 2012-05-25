#!/bin/bash

SRC_BASE=`pwd`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
PACKAGE_LIST=$1
if [ -z "${PACKAGE_LIST}" ]; then
	PACKAGE_LIST=`cat package_list`
else
	[ -n "${2}" ] && GET_LATEST="_latest"
fi
                
for PACKAGE in ${PACKAGE_LIST}; do
	if [ -h "${PACKAGE}" ]; then
		echo -e "\nBuilding '${PACKAGE}'...\n"
		${SRC_BASE}/build_${PACKAGE}.sh debug
	fi
done

#!/bin/bash

SRC_BASE=`pwd`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
PACKAGE_LIST=`cat package_list`

for PACKAGE in ${PACKAGE_LIST}; do
	if [ ! -h "${PACKAGE}" ]; then
		echo -e "\nFetching '${PACKAGE}'...\n"
		${SRC_BASE}/get_${PACKAGE}.sh
		if [ -d "${SRC_BASE}/${PACKAGE}-patchset" ]; then
			echo -e "\nCopying patch set for '${PACKAGE}'...\n"
			cp -vrf ${SRC_BASE}/${PACKAGE}-patchset/* ${SRC_BASE}/${PACKAGE}
			echo -e "\nPatching '${PACKAGE}'...\n"
			for PATCH in `find ${SRC_BASE}/${PACKAGE}/ -name "*.patch"`; do
				ORIGINAL=`echo ${PATCH} | sed -r 's/\.patch$//'`
				[ -f "${ORIGINAL}" ] || touch ${ORIGINAL}
				patch -bNp0 ${ORIGINAL} < ${PATCH}
			done
		fi
	fi
done

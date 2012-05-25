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
	echo -e "\nFetching '${PACKAGE}'...\n"
	${SRC_BASE}/get_${PACKAGE}${GET_LATEST}.sh
	if [ $? -ne 0 ]; then
		echo "Error fetching package ${PACKAGE}!"
		exit 1
	fi
	if [ -d "${SRC_BASE}/${PACKAGE}-patchset" -a ! -f "${SRC_BASE}/${PACKAGE}/.patchset_applied" ]; then
		echo -e "\nCopying patch set for '${PACKAGE}'...\n"
		cp -vrf ${SRC_BASE}/${PACKAGE}-patchset/* ${SRC_BASE}/${PACKAGE}
		echo -e "\nPatching '${PACKAGE}'...\n"
		for PATCH in `find ${SRC_BASE}/${PACKAGE}/ -name "*.patch"`; do
			ORIGINAL=`echo ${PATCH} | sed -r 's/\.patch$//'`
			[ -f "${ORIGINAL}" ] || touch ${ORIGINAL}
			patch -bNp0 ${ORIGINAL} < ${PATCH}
		done
		touch "${SRC_BASE}/${PACKAGE}/.patchset_applied"
	fi
done

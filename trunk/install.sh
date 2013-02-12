#!/bin/bash

SRC_BASE=`pwd`
PACKAGE_LIST=$1
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
[ -n "${PACKAGE_LIST}" ] || PACKAGE_LIST=`cat ${SRC_BASE}/package_list`

for PACKAGE in ${PACKAGE_LIST}; do
	if [ -h "${PACKAGE}" ]; then
		echo -e "\nInstalling '${PACKAGE}'...\n"
		if [ -x "${SRC_BASE}/install_${PACKAGE}.sh" ]; then
			${SRC_BASE}/install_${PACKAGE}.sh || exit 1
		else
			cd ${PACKAGE}
			gmake install || exit 1
			cd ${SRC_BASE}
		fi
	fi
done

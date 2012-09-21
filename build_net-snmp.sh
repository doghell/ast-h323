#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
if [ -n "${2}" ]; then
	INSTALL_PREFIX="--prefix=${2}"
	NETSNMP_LOGFILE="${2}/log/net-snmp.log"
	NETSNMP_PDIR="${2}/run/net-snmp"
else
	NETSNMP_LOGFILE="${HOME}/log/net-snmp.log"
	NETSNMP_PDIR="${HOME}/run/net-snmp"
fi

cd "${SRC_BASE}/net-snmp"

./configure \
	${INSTALL_PREFIX} \
	--with-default-snmp-version="2" \
	--with-sys-contact="default@contact" \
	--with-sys-location="Default location" \
	--with-logfile="${NETSNMP_LOGFILE}" \
	--with-persistent-directory="${NETSNMP_PDIR}"

make

#!/bin/bash

SRC_BASE=`pwd`
PACKAGE_LIST=$1
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`

cd "${SRC_BASE}/asterisk"
echo -e "\nPatching 'asterisk'...\n"
patch -bENp0 < "${SRC_BASE}/asterisk-patchset/patchset.diff" || exit 1

#!/bin/bash

SRC_BASE=`pwd`
PACKAGE_LIST=$1
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`

cd "${SRC_BASE}/asterisk"
echo -e "\nInstalling new patch set...\n"
svn add channels/Makefile.in
svn delete --force channels/Makefile
svn diff > "${SRC_BASE}/asterisk-patchset/patchset.diff"

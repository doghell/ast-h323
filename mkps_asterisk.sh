#!/bin/bash

SRC_BASE=`pwd`
PACKAGE_LIST=$1
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`

cd "${SRC_BASE}/asterisk"
echo -e "\nInstalling new patch set...\n"
svn add autoconf/ast_check_h323plus.m4
svn add channels/Makefile.in
svn delete --force autoconf/ast_check_openh323.m4
svn delete --force channels/Makefile

[ -d "${SRC_BASE}/asterisk-patchset" ] || mkdir -p "${SRC_BASE}/asterisk-patchset"
svn diff > "${SRC_BASE}/asterisk-patchset/patchset.diff"

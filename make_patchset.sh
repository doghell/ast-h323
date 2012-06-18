#!/bin/bash

PKG_DISTRIB=asterisk
PKG_ORIG_LIST=`find "${PKG_DISTRIB}/" -name "*.orig"`

for PKG_ORIG in ${PKG_ORIG_LIST} ; do
	PKG_SRC=`echo ${PKG_ORIG} | sed -r 's/\.orig$//g'`
	PKG_PATCH="${PKG_SRC}.patch"
	diff -u "${PKG_ORIG}" "${PKG_SRC}" > "${PKG_PATCH}"
	PKG_PATCH_LIST="${PKG_PATCH_LIST} ${PKG_PATCH}"
done

PKG_DATETIME=`date +%Y%m%d`
PKG_PATCHSET_SEQ_NUM=1
PKG_PATCHSET="${PKG_DISTRIB}-patchset_${PKG_DATETIME}-${PKG_PATCHSET_SEQ_NUM}.tar.bz2"

while test -f "${PKG_PATCHSET}" ; do
	PKG_DATETIME=`date +%Y%m%d`
	PKG_PATCHSET="${PKG_DISTRIB}-patchset_${PKG_DATETIME}-$((PKG_PATCHSET_SEQ_NUM++)).tar.bz2"
done

echo -e "Creating patch set archive...\n"
tar cvjf ${PKG_PATCHSET} ${PKG_PATCH_LIST}

echo -e "\nInstalling new patch set...\n"
tar xvjf ${PKG_PATCHSET} -C asterisk-patchset/ --strip-components 1

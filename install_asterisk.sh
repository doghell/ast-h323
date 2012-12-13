#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`

cd "${SRC_BASE}/asterisk"

cp -vf main/asterisk ${HOME}/bin
if [ "`uname`" == "Linux" ]; then
	cp -vf --no-dereference main/libasteriskssl.so* ${HOME}/lib
else
	cp -vfR main/libasteriskssl.so* ${HOME}/lib
fi
mkdir -p ${HOME}/lib/asterisk/modules
for MODNAME_PFX in app bridge cdr chan codec format func pbx res ; do
	find . -name "${MODNAME_PFX}_*.so" -exec cp -vf \{} ${HOME}/lib/asterisk/modules \;
done

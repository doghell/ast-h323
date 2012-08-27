#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`

cd "${SRC_BASE}/asterisk"

cp -vf main/asterisk ${HOME}/bin
MODULES=`find . | grep -P "\/(app|bridge|cdr|chan|codec|format|func|pbx|res)_[^\/]*\.so$"`
mkdir -p ${HOME}/lib/asterisk/modules
cp -vf ${MODULES} ${HOME}/lib/asterisk/modules

#asterisk-g723-g729)
#	cp -vf * ${MMSVC_HOME}/lib/asterisk/modules
#;;

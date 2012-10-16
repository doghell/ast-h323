#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`

cd "${SRC_BASE}/opensips"

gmake \
	bin-prefix=${HOME} \
	bin-dir=bin \
	cfg-prefix=${HOME}/etc \
	cfg-dir=srp \
	data-prefix=${HOME} \
	doc-prefix=${HOME} \
	man-prefix=${HOME} \
	modules-prefix=${HOME} \
	app mk-install-dirs opensipsmc install-bin
        
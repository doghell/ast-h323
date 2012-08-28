#!/bin/bash

SRC_BASE=`dirname $0`
[ -f "${SRC_BASE}/$0" ] || SRC_BASE=`dirname $0`
[ "${1}" == "debug" ] && CMAKE_OPTS="-DCMAKE_BUILD_TYPE=Debug"
[ -n "${2}" ] && CMAKE_OPTS="${CMAKE_OPTS} -DCMAKE_INSTALL_PREFIX=${2}"

export PATH="${HOME}/bin:${PATH}"

cd "${SRC_BASE}/libssh"

[ -d build ] || mkdir build || exit 1
cd build
cmake ${CMAKE_OPTS} "${SRC_BASE}/libssh" && \
make && \
ln -svnf "${SRC_BASE}/libssh/build/src" "${SRC_BASE}/libssh/build/lib"

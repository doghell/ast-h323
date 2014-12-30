if [ "${1}" == "debug" ]; then
	BUILD_TYPE=debug
else
	BUILD_TYPE=opt
fi
[ -n "${2}" ] && INSTALL_PREFIX="--prefix=${2}"

[ "${HOSTTYPE}" == "x86_64" ] && ARCH_SUFFIX="_64"

export PWLIBDIR="${SRC_BASE}/ptlib"
export OPENH323DIR="${SRC_BASE}/h323plus"

export CPPFLAGS="-I${PWLIBDIR}/include -I${OPENHH323DIR}/include"
[ "`uname`" != "Linux" ] && export CPPFLAGS="${CPPFLAGS} ${LDFLAGS}"
export CFLAGS="${CPPFLAGS} -fexceptions"

cd "${SRC_BASE}/asterisk"

if [ ! -f configure ]; then
	./bootstrap.sh || exit 1
fi

./configure \
	${INSTALL_PREFIX} \
	--with-spandsp \
	--with-h323=${BUILD_TYPE} && \
${MAKE_CMD}

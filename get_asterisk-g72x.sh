[ -h asterisk-g72x ] && echo "Already exists" && exit
if [ ! -d asterisk-g72x_trunk ]; then
	mkdir -vp asterisk-g72x_trunk && \
	wget --directory-prefix=asterisk-g72x_trunk \
		http://asterisk.hosting.lv/bin/codec_g723-ast110-gcc4-glibc-pentium4.so \
		http://asterisk.hosting.lv/bin/codec_g723-ast110-gcc4-glibc-pentium4-sse3.so \
		http://asterisk.hosting.lv/bin/codec_g723-ast110-gcc4-glibc-x86_64-pentium4.so \
		http://asterisk.hosting.lv/bin/codec_g723-ast110-gcc4-glibc-x86_64-core2.so \
		http://asterisk.hosting.lv/bin/codec_g723-ast110-gcc4-glibc-x86_64-core2-sse4.so \
		http://asterisk.hosting.lv/bin/codec_g723-ast110-gcc4-glibc-opteron.so \
		http://asterisk.hosting.lv/bin/codec_g723-ast110-gcc4-glibc-opteron-sse3.so \
		http://asterisk.hosting.lv/bin/codec_g723-ast110-gcc4-glibc-x86_64-opteron.so \
		http://asterisk.hosting.lv/bin/codec_g723-ast110-gcc4-glibc-x86_64-opteron-sse3.so \
		http://asterisk.hosting.lv/bin/codec_g729-ast110-gcc4-glibc-pentium4.so \
		http://asterisk.hosting.lv/bin/codec_g729-ast110-gcc4-glibc-pentium4-sse3.so \
		http://asterisk.hosting.lv/bin/codec_g729-ast110-gcc4-glibc-x86_64-pentium4.so \
		http://asterisk.hosting.lv/bin/codec_g729-ast110-gcc4-glibc-x86_64-core2.so \
		http://asterisk.hosting.lv/bin/codec_g729-ast110-gcc4-glibc-x86_64-core2-sse4.so \
		http://asterisk.hosting.lv/bin/codec_g729-ast110-gcc4-glibc-opteron.so \
		http://asterisk.hosting.lv/bin/codec_g729-ast110-gcc4-glibc-opteron-sse3.so \
		http://asterisk.hosting.lv/bin/codec_g729-ast110-gcc4-glibc-x86_64-opteron.so \
		http://asterisk.hosting.lv/bin/codec_g729-ast110-gcc4-glibc-x86_64-opteron-sse3.so
fi
if [ -d asterisk-g72x_trunk ]; then
	ln -svnf asterisk-g72x_trunk asterisk-g72x
else
	exit 1
fi

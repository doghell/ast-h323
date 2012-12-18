if [ ! -d curl-7.28.1 ]; then
	if [ ! -f curl-7.28.1.tar.bz2 ]; then
		wget http://curl.haxx.se/download/curl-7.28.1.tar.bz2 || exit 1
	fi
	tar xvjf curl-7.28.1.tar.bz2 || exit 1
fi
if [ -d curl-7.28.1 ]; then
	ln -svnf curl-7.28.1 curl
else
	exit 1
fi

if [ ! -d sqlite-autoconf-3071401 ]; then
	if [ ! -f sqlite-autoconf-3071401.tar.gz ]; then
		wget http://www.sqlite.org/sqlite-autoconf-3071401.tar.gz || exit 1
	fi
	tar xvzf sqlite-autoconf-3071401.tar.gz || exit 1
fi
if [ -d sqlite-autoconf-3071401 ]; then
	ln -svnf sqlite-autoconf-3071401 sqlite
else
	exit 1
fi

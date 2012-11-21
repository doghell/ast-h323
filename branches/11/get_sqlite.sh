[ -h sqlite ] && echo "Already exists" && exit
sqlite3 -version | perl -e 'if (<> =~ /^([\d\.]+)/) { @v = split /\./, $1; $ver = $v[0]*10000 + $v[1]*100 +$v[2]; exit 0 unless $ver < 30714; } exit 1;'
[ $? -eq 0 ] && exit 0
if [ ! -d sqlite-autoconf-3071400 ]; then
	if [ ! -f sqlite-autoconf-3071400.tar.gz ]; then
		wget http://www.sqlite.org/sqlite-autoconf-3071400.tar.gz || exit 1
	fi
	tar xvzf sqlite-autoconf-3071400.tar.gz || exit 1
fi
if [ -d sqlite-autoconf-3071400 ]; then
	ln -svnf sqlite-autoconf-3071400 sqlite
else
	exit 1
fi

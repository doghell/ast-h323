[ -h pkg-config ] && echo "Already exists" && exit
pkg-config --version | perl -e 'if (<> =~ /^([\d\.]+)/) { @v = split /\./, $1; $ver = $v[0]*10000 + $v[1]*100; exit 0 unless $ver < 2600; } exit 1;'
[ $? -eq 0 ] && exit 0
if [ ! -d pkg-config-0.26 ]; then
	if [ ! -f pkg-config-0.26.tar.gz ]; then
		wget http://pkgconfig.freedesktop.org/releases/pkg-config-0.26.tar.gz || exit 1
	fi
	tar xvzf pkg-config-0.26.tar.gz || exit 1
fi
if [ -d pkg-config-0.26 ]; then
	ln -svnf pkg-config-0.26 pkg-config
else
	exit 1
fi

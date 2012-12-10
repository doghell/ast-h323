[ -h curl ] && echo "Already exists" && exit
curl --version | head -1 | perl -e 'if (<> =~ /^curl ([\d\.]+)/) { @v = split /\./, $1; $ver = $v[0]*10000 + $v[1]*100 + $v[2]; exit 0 unless $ver < 72801; } exit 1;'
[ $? -eq 0 ] && exit 0
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

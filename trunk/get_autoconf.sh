[ -h autoconf ] && echo "Already exists" && exit
autoconf -V | perl -e 'if (<> =~ /autoconf \(GNU Autoconf\) ([\d\.]+)/) { @v = split /\./, $1; $ver = $v[0]*10000 + $v[1]*100; exit 0 unless $ver < 26900; } exit 1;'
[ $? -eq 0 ] && exit 0
if [ ! -d autoconf-2.69 ]; then
	if [ ! -f autoconf-2.69.tar.gz ]; then
		wget http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz || exit 1
	fi
	tar xvzf autoconf-2.69.tar.gz || exit 1
fi
if [ -d autoconf-2.69 ]; then
	ln -svnf autoconf-2.69 autoconf
else
	exit 1
fi
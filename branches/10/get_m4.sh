[ -h m4 ] && echo "Already exists" && exit
m4 --version | head -1 | perl -e 'if (<> =~ /\(?GNU M4\)? ([\d\.]+)/) { @v = split /\./, $1; $ver = $v[0]*10000 + $v[1]*100 + $v[2]; exit 0 unless $ver < 10416; } exit 1;'
[ $? -eq 0 ] && exit 0
if [ ! -d m4-1.4.16 ]; then
	if [ ! -f m4-1.4.16.tar.bz2 ]; then
		wget http://ftp.gnu.org/gnu/m4/m4-1.4.16.tar.bz2 || exit 1
	fi
	tar xvjf m4-1.4.16.tar.bz2 || exit 1
fi
if [ -d m4-1.4.16 ]; then
	ln -svnf m4-1.4.16 m4
else
	exit 1
fi

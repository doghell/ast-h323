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

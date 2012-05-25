[ -h ptlib ] && echo "Already exists" && exit
if [ ! -d ptlib-2.10.5 ]; then
	if [ ! -f ptlib-2.10.5.tar.bz2 ]; then
		wget http://downloads.sourceforge.net/project/opalvoip/v3.10%20Luyten/Stable%205/ptlib-2.10.5.tar.bz2 || exit 1
	fi
	tar xvjf ptlib-2.10.5.tar.bz2 || exit 1
fi
if [ -d ptlib-2.10.5 ]; then
	ln -svnf ptlib-2.10.5 ptlib
else
	exit 1
fi

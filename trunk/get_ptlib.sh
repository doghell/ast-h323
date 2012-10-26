[ -h ptlib ] && echo "Already exists" && exit
if [ ! -d ptlib-2.10.8 ]; then
	svn co http://opalvoip.svn.sourceforge.net/svnroot/opalvoip/ptlib/tags/v2_10_8 ptlib-2.10.8 || exit 1
fi
if [ -d ptlib-2.10.8 ]; then
	ln -svnf ptlib-2.10.8 ptlib
else
	exit 1
fi

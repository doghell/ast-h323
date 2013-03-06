[ -h ptlib ] && echo "Already exists" && exit
if [ ! -d ptlib-svn_2.10 ]; then
	svn checkout http://opalvoip.svn.sourceforge.net/svnroot/opalvoip/ptlib/branches/v2_10 ptlib-svn_2.10 || exit 1
fi
if [ -d ptlib-svn_2.10 ]; then
	ln -svnf ptlib-svn_2.10 ptlib
else
	exit 1
fi

[ -h ptlib ] && echo "Already exists" && exit
if [ ! -d ptlib-svn_2.8 ]; then
	svn checkout http://opalvoip.svn.sourceforge.net/svnroot/opalvoip/ptlib/branches/v2_8 ptlib-svn_2.8 || exit 1
	[ -f ptlib-svn_2.8/configure ] && rm -vf ptlib-svn_2.8/configure
fi
if [ -d ptlib-svn_2.8 ]; then
	ln -svnf ptlib-svn_2.8 ptlib
else
	exit 1
fi

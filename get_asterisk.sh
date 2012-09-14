[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r373055 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@373055 asterisk-svn_r373055 || exit 1
	rm -vf asterisk-svn_r373055/configure || exit 1
fi
if [ -d asterisk-svn_r373055 ]; then
	ln -svnf asterisk-svn_r373055 asterisk
else
	exit 1
fi

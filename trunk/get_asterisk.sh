[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r374523 ]; then
	svn checkout -r 374523 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r374523 || exit 1
	rm -vf asterisk-svn_r374523/configure || exit 1
fi
if [ -d asterisk-svn_r374523 ]; then
	ln -svnf asterisk-svn_r374523 asterisk
else
	exit 1
fi

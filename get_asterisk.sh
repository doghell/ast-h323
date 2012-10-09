[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r374753 ]; then
	svn checkout -r 374753 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r374753 || exit 1
	rm -vf asterisk-svn_r374753/configure || exit 1
fi
if [ -d asterisk-svn_r374753 ]; then
	ln -svnf asterisk-svn_r374753 asterisk
else
	exit 1
fi

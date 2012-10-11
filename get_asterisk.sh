[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r374832 ]; then
	svn checkout -r 374832 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r374832 || exit 1
	rm -vf asterisk-svn_r374832/configure || exit 1
fi
if [ -d asterisk-svn_r374832 ]; then
	ln -svnf asterisk-svn_r374832 asterisk
else
	exit 1
fi

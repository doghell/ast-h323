[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r374206 ]; then
	svn checkout -r 374206 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r374206 || exit 1
	rm -vf asterisk-svn_r374206/configure || exit 1
fi
if [ -d asterisk-svn_r374206 ]; then
	ln -svnf asterisk-svn_r374206 asterisk
else
	exit 1
fi

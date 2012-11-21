[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r376573 ]; then
	svn checkout -r 376573 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r376573 || exit 1
	rm -vf asterisk-svn_r376573/configure || exit 1
fi
if [ -d asterisk-svn_r376573 ]; then
	ln -svnf asterisk-svn_r376573 asterisk
else
	exit 1
fi

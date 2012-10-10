[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r374790 ]; then
	svn checkout -r 374790 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r374790 || exit 1
	rm -vf asterisk-svn_r374790/configure || exit 1
fi
if [ -d asterisk-svn_r374790 ]; then
	ln -svnf asterisk-svn_r374790 asterisk
else
	exit 1
fi

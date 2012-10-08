[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r374651 ]; then
	svn checkout -r 374651 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r374651 || exit 1
	rm -vf asterisk-svn_r374651/configure || exit 1
fi
if [ -d asterisk-svn_r374651 ]; then
	ln -svnf asterisk-svn_r374651 asterisk
else
	exit 1
fi

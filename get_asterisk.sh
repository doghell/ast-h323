[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r374095 ]; then
	svn checkout -r 374095 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r374095 || exit 1
	rm -vf asterisk-svn_r374095/configure || exit 1
fi
if [ -d asterisk-svn_r374095 ]; then
	ln -svnf asterisk-svn_r374095 asterisk
else
	exit 1
fi

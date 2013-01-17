[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r379373 ]; then
	svn checkout -r 379373 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r379373 || exit 1
	rm -vf asterisk-svn_r379373/configure || exit 1
fi
if [ -d asterisk-svn_r379373 ]; then
	ln -svnf asterisk-svn_r379373 asterisk
else
	exit 1
fi

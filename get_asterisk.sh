[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r376998 ]; then
	svn checkout -r 376998 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r376998 || exit 1
	rm -vf asterisk-svn_r376998/configure || exit 1
fi
if [ -d asterisk-svn_r376998 ]; then
	ln -svnf asterisk-svn_r376998 asterisk
else
	exit 1
fi

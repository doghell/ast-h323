[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r376620 ]; then
	svn checkout -r 376620 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r376620 || exit 1
	rm -vf asterisk-svn_r376620/configure || exit 1
fi
if [ -d asterisk-svn_r376620 ]; then
	ln -svnf asterisk-svn_r376620 asterisk
else
	exit 1
fi

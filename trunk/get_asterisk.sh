[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r376616 ]; then
	svn checkout -r 376616 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r376616 || exit 1
	rm -vf asterisk-svn_r376616/configure || exit 1
fi
if [ -d asterisk-svn_r376616 ]; then
	ln -svnf asterisk-svn_r376616 asterisk
else
	exit 1
fi

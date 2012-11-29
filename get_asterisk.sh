[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r376817 ]; then
	svn checkout -r 376817 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r376817 || exit 1
	rm -vf asterisk-svn_r376817/configure || exit 1
fi
if [ -d asterisk-svn_r376817 ]; then
	ln -svnf asterisk-svn_r376817 asterisk
else
	exit 1
fi

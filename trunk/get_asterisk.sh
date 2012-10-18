[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r375188 ]; then
	svn checkout -r 375188 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r375188 || exit 1
	rm -vf asterisk-svn_r375188/configure || exit 1
fi
if [ -d asterisk-svn_r375188 ]; then
	ln -svnf asterisk-svn_r375188 asterisk
else
	exit 1
fi

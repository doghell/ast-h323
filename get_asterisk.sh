[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r378706 ]; then
	svn checkout -r 378706 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r378706 || exit 1
	rm -vf asterisk-svn_r378706/configure || exit 1
fi
if [ -d asterisk-svn_r378706 ]; then
	ln -svnf asterisk-svn_r378706 asterisk
else
	exit 1
fi

[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r383058 ]; then
	svn checkout -r 383058 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r383058 || exit 1
	rm -vf asterisk-svn_r383058/configure || exit 1
fi
if [ -d asterisk-svn_r383058 ]; then
	ln -svnf asterisk-svn_r383058 asterisk
else
	exit 1
fi

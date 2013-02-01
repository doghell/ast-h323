[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r380769 ]; then
	svn checkout -r 380769 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r380769 || exit 1
	rm -vf asterisk-svn_r380769/configure || exit 1
fi
if [ -d asterisk-svn_r380769 ]; then
	ln -svnf asterisk-svn_r380769 asterisk
else
	exit 1
fi

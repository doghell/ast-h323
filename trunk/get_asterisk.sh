[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r381155 ]; then
	svn checkout -r 381155 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r381155 || exit 1
	rm -vf asterisk-svn_r381155/configure || exit 1
fi
if [ -d asterisk-svn_r381155 ]; then
	ln -svnf asterisk-svn_r381155 asterisk
else
	exit 1
fi

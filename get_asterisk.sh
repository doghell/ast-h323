[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r410826 ]; then
	svn checkout -r 410826 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r410826 || exit 1
	rm -vf asterisk-svn_r410826/configure || exit 1
fi
if [ -d asterisk-svn_r410826 ]; then
	ln -svnf asterisk-svn_r410826 asterisk
else
	exit 1
fi

[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r375136 ]; then
	svn checkout -r 375136 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r375136 || exit 1
	rm -vf asterisk-svn_r375136/configure || exit 1
fi
if [ -d asterisk-svn_r375136 ]; then
	ln -svnf asterisk-svn_r375136 asterisk
else
	exit 1
fi

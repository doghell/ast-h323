[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r375583 ]; then
	svn checkout -r 375583 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r375583 || exit 1
	rm -vf asterisk-svn_r375583/configure || exit 1
fi
if [ -d asterisk-svn_r375583 ]; then
	ln -svnf asterisk-svn_r375583 asterisk
else
	exit 1
fi

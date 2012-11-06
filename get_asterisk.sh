[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r375924 ]; then
	svn checkout -r 375924 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r375924 || exit 1
	rm -vf asterisk-svn_r375924/configure || exit 1
fi
if [ -d asterisk-svn_r375924 ]; then
	ln -svnf asterisk-svn_r375924 asterisk
else
	exit 1
fi

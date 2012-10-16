[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r375050 ]; then
	svn checkout -r 375050 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r375050 || exit 1
	rm -vf asterisk-svn_r375050/configure || exit 1
fi
if [ -d asterisk-svn_r375050 ]; then
	ln -svnf asterisk-svn_r375050 asterisk
else
	exit 1
fi

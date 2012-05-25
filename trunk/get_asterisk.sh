[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r367559 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@367559 asterisk-svn_r367559 || exit 1
	rm -vf asterisk-svn_r367559/configure || exit 1
fi
if [ -d asterisk-svn_r367559 ]; then
	ln -svnf asterisk-svn_r367559 asterisk
else
	exit 1
fi

[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r367831 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@367831 asterisk-svn_r367831 || exit 1
	rm -vf asterisk-svn_r367831/configure || exit 1
fi
if [ -d asterisk-svn_r367831 ]; then
	ln -svnf asterisk-svn_r367831 asterisk
else
	exit 1
fi

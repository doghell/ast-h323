[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r372185 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@372185 asterisk-svn_r372185 || exit 1
	rm -vf asterisk-svn_r372185/configure || exit 1
fi
if [ -d asterisk-svn_r372185 ]; then
	ln -svnf asterisk-svn_r372185 asterisk
else
	exit 1
fi

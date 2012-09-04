[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r372132 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@372132 asterisk-svn_r372132 || exit 1
	rm -vf asterisk-svn_r372132/configure || exit 1
fi
if [ -d asterisk-svn_r372132 ]; then
	ln -svnf asterisk-svn_r372132 asterisk
else
	exit 1
fi

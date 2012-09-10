[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r372735 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@372735 asterisk-svn_r372735 || exit 1
	rm -vf asterisk-svn_r372735/configure || exit 1
fi
if [ -d asterisk-svn_r372735 ]; then
	ln -svnf asterisk-svn_r372735 asterisk
else
	exit 1
fi

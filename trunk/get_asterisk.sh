[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r371689 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@371689 asterisk-svn_r371689 || exit 1
	rm -vf asterisk-svn_r371689/configure || exit 1
fi
if [ -d asterisk-svn_r371689 ]; then
	ln -svnf asterisk-svn_r371689 asterisk
else
	exit 1
fi

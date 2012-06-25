[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r369301 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@369301 asterisk-svn_r369301 || exit 1
	rm -vf asterisk-svn_r369301/configure || exit 1
fi
if [ -d asterisk-svn_r369301 ]; then
	ln -svnf asterisk-svn_r369301 asterisk
else
	exit 1
fi

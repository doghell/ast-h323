[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r369142 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@369142 asterisk-svn_r369142 || exit 1
	rm -vf asterisk-svn_r369142/configure || exit 1
fi
if [ -d asterisk-svn_r369142 ]; then
	ln -svnf asterisk-svn_r369142 asterisk
else
	exit 1
fi

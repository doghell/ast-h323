[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r379823 ]; then
	svn checkout -r 379823 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r379823 || exit 1
	rm -vf asterisk-svn_r379823/configure || exit 1
fi
if [ -d asterisk-svn_r379823 ]; then
	ln -svnf asterisk-svn_r379823 asterisk
else
	exit 1
fi

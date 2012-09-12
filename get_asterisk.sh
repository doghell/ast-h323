[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r372929 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@372929 asterisk-svn_r372929 || exit 1
	rm -vf asterisk-svn_r372929/configure || exit 1
fi
if [ -d asterisk-svn_r372929 ]; then
	ln -svnf asterisk-svn_r372929 asterisk
else
	exit 1
fi

[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r377802 ]; then
	svn checkout -r 377802 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r377802 || exit 1
	rm -vf asterisk-svn_r377802/configure || exit 1
fi
if [ -d asterisk-svn_r377802 ]; then
	ln -svnf asterisk-svn_r377802 asterisk
else
	exit 1
fi

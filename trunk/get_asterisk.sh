[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r377255 ]; then
	svn checkout -r 377255 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r377255 || exit 1
	rm -vf asterisk-svn_r377255/configure || exit 1
fi
if [ -d asterisk-svn_r377255 ]; then
	ln -svnf asterisk-svn_r377255 asterisk
else
	exit 1
fi

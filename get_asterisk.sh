[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r375354 ]; then
	svn checkout -r 375354 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r375354 || exit 1
	rm -vf asterisk-svn_r375354/configure || exit 1
fi
if [ -d asterisk-svn_r375354 ]; then
	ln -svnf asterisk-svn_r375354 asterisk
else
	exit 1
fi

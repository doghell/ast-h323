[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r379425 ]; then
	svn checkout -r 379425 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r379425 || exit 1
	rm -vf asterisk-svn_r379425/configure || exit 1
fi
if [ -d asterisk-svn_r379425 ]; then
	ln -svnf asterisk-svn_r379425 asterisk
else
	exit 1
fi

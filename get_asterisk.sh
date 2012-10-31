[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r375524 ]; then
	svn checkout -r 375524 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r375524 || exit 1
	rm -vf asterisk-svn_r375524/configure || exit 1
fi
if [ -d asterisk-svn_r375524 ]; then
	ln -svnf asterisk-svn_r375524 asterisk
else
	exit 1
fi

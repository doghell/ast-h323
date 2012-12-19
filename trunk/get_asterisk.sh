[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r378145 ]; then
	svn checkout -r 378145 http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_r378145 || exit 1
	rm -vf asterisk-svn_r378145/configure || exit 1
fi
if [ -d asterisk-svn_r378145 ]; then
	ln -svnf asterisk-svn_r378145 asterisk
else
	exit 1
fi

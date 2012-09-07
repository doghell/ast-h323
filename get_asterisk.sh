[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r372607 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@372607 asterisk-svn_r372607 || exit 1
	rm -vf asterisk-svn_r372607/configure || exit 1
fi
if [ -d asterisk-svn_r372607 ]; then
	ln -svnf asterisk-svn_r372607 asterisk
else
	exit 1
fi

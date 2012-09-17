[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r373116 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@373116 asterisk-svn_r373116 || exit 1
	rm -vf asterisk-svn_r373116/configure || exit 1
fi
if [ -d asterisk-svn_r373116 ]; then
	ln -svnf asterisk-svn_r373116 asterisk
else
	exit 1
fi

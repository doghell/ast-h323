[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r373201 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@373201 asterisk-svn_r373201 || exit 1
	rm -vf asterisk-svn_r373201/configure || exit 1
fi
if [ -d asterisk-svn_r373201 ]; then
	ln -svnf asterisk-svn_r373201 asterisk
else
	exit 1
fi

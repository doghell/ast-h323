[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r368142 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@368142 asterisk-svn_r368142 || exit 1
	rm -vf asterisk-svn_r368142/configure || exit 1
fi
if [ -d asterisk-svn_r368142 ]; then
	ln -svnf asterisk-svn_r368142 asterisk
else
	exit 1
fi

[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r367780 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@367780 asterisk-svn_r367780 || exit 1
	rm -vf asterisk-svn_r367780/configure || exit 1
fi
if [ -d asterisk-svn_r367780 ]; then
	ln -svnf asterisk-svn_r367780 asterisk
else
	exit 1
fi

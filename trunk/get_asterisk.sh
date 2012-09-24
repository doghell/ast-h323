[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-svn_r373402 ]; then
	svn checkout http://svn.asterisk.org/svn/asterisk/trunk@373402 asterisk-svn_r373402 || exit 1
	rm -vf asterisk-svn_r373402/configure || exit 1
fi
if [ -d asterisk-svn_r373402 ]; then
	ln -svnf asterisk-svn_r373402 asterisk
else
	exit 1
fi

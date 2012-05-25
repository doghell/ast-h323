[ -h asterisk ] && rm -vf asterisk
[ -d asterisk-svn_latest ] && rm -vrf asterisk-svn_latest
svn checkout http://svn.asterisk.org/svn/asterisk/trunk asterisk-svn_latest || exit 1
if [ -d asterisk-svn_latest ]; then
	rm -vf asterisk-svn_latest/configure || exit 1
	ln -svnf asterisk-svn_latest asterisk
else
	exit 1
fi

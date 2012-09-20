[ -h opal ] && rm -vf opal
[ -d opal-svn_latest ] && rm -vrf opal-svn_latest
svn checkout http://opalvoip.svn.sourceforge.net/svnroot/opalvoip/opal/trunk opal-svn_latest || exit 1
if [ -d opal-svn_latest ]; then
	ln -svnf opal-svn_latest opal
else
	exit 1
fi

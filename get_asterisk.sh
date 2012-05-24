[ -h asterisk ] && exit
[ -d asterisk-svn_r367559 ] && rm -vrf asterisk-svn_r367559
svn checkout http://svn.asterisk.org/svn/asterisk/trunk@367559 asterisk-svn_r367559 && \
ln -svnf asterisk-svn_r367559 asterisk && \
rm -vf asterisk/configure

[ -h h323plus ] && exit
[ -d h323plus-cvs_20120524-1745 ] && rm -vrf h323plus-cvs_20120524-1745
cvs -z3 -d:pserver:anonymous@h323plus.cvs.sourceforge.net:/cvsroot/h323plus co -P -D "2012-05-24 17:45" h323plus && \
mv h323plus h323plus-cvs_20120524-1745 && \
ln -svnf h323plus-cvs_20120524-1745 h323plus

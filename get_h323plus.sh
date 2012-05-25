[ -h h323plus ] && echo "Already exists" && exit
if [ ! -d h323plus-cvs_20120524-1745 ]; then
	cvs -z3 -d:pserver:anonymous@h323plus.cvs.sourceforge.net:/cvsroot/h323plus co -P -D "2012-05-24 17:45" h323plus || exit 1
	mv h323plus h323plus-cvs_20120524-1745 || exit 1
fi
if [ -d h323plus-cvs_20120524-1745 ]; then
	ln -svnf h323plus-cvs_20120524-1745 h323plus
else
	exit 1
fi

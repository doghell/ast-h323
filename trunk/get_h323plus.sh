[ -h h323plus ] && echo "Already exists" && exit
if [ ! -d h323plus-cvs_20120914-1100 ]; then
	cvs -z3 -d:pserver:anonymous@h323plus.cvs.sourceforge.net:/cvsroot/h323plus co -P -D "2012-09-14 11:00" h323plus || exit 1
	mv h323plus h323plus-cvs_20120914-1100 || exit 1
fi
if [ -d h323plus-cvs_20120914-1100 ]; then
	ln -svnf h323plus-cvs_20120914-1100 h323plus
else
	exit 1
fi

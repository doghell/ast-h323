[ -h h323plus ] && echo "Already exists" && exit
if [ ! -d h323plus-cvs_20121210-1548 ]; then
	cvs -z3 -d:pserver:anonymous@h323plus.cvs.sourceforge.net:/cvsroot/h323plus co -P -D "2012-12-10 15:48" h323plus || exit 1
	mv h323plus h323plus-cvs_20121210-1548 || exit 1
fi
if [ -d h323plus-cvs_20121210-1548 ]; then
	ln -svnf h323plus-cvs_20121210-1548 h323plus
else
	exit 1
fi

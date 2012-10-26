[ -h h323plus ] && echo "Already exists" && exit
if [ ! -d h323plus-cvs_20121026-1825 ]; then
	cvs -z3 -d:pserver:anonymous@h323plus.cvs.sourceforge.net:/cvsroot/h323plus co -P -D "2012-10-26 18:25" h323plus || exit 1
	mv h323plus h323plus-cvs_20121026-1825 || exit 1
fi
if [ -d h323plus-cvs_20121026-1825 ]; then
	ln -svnf h323plus-cvs_20121026-1825 h323plus
else
	exit 1
fi

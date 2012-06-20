[ -h h323plus ] && echo "Already exists" && exit
if [ ! -d h323plus-cvs_20120620-1800 ]; then
	cvs -z3 -d:pserver:anonymous@h323plus.cvs.sourceforge.net:/cvsroot/h323plus co -P -D "2012-06-20 18:00" h323plus || exit 1
	mv h323plus h323plus-cvs_20120620-1800 || exit 1
fi
if [ -d h323plus-cvs_20120620-1800 ]; then
	ln -svnf h323plus-cvs_20120620-1800 h323plus
else
	exit 1
fi

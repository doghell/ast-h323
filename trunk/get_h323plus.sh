[ -h h323plus ] && echo "Already exists" && exit
if [ ! -d h323plus-cvs_20121121-1225 ]; then
	cvs -z3 -d:pserver:anonymous@h323plus.cvs.sourceforge.net:/cvsroot/h323plus co -P -D "2012-11-21 12:25" h323plus || exit 1
	mv h323plus h323plus-cvs_20121121-1225 || exit 1
fi
if [ -d h323plus-cvs_20121121-1225 ]; then
	ln -svnf h323plus-cvs_20121121-1225 h323plus
else
	exit 1
fi

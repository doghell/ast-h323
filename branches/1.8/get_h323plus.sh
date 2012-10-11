[ -h h323plus ] && echo "Already exists" && exit
if [ ! -d h323plus-cvs_20121011-1040 ]; then
	cvs -z3 -d:pserver:anonymous@h323plus.cvs.sourceforge.net:/cvsroot/h323plus co -P -D "2012-10-11 10:40" h323plus || exit 1
	mv h323plus h323plus-cvs_20121011-1040 || exit 1
fi
if [ -d h323plus-cvs_20121011-1040 ]; then
	ln -svnf h323plus-cvs_20121011-1040 h323plus
else
	exit 1
fi

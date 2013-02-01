[ -h h323plus ] && echo "Already exists" && exit
if [ ! -d h323plus-cvs_20130201-0800 ]; then
	cvs -z3 -d:pserver:anonymous@h323plus.cvs.sourceforge.net:/cvsroot/h323plus co -P -D "2013-02-01 08:00" h323plus || exit 1
	mv h323plus h323plus-cvs_20130201-0800 || exit 1
fi
if [ -d h323plus-cvs_20130201-0800 ]; then
	ln -svnf h323plus-cvs_20130201-0800 h323plus
else
	exit 1
fi

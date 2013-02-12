[ -h gnugk ] && echo "Already exists" && exit
if [ ! -d gnugk-2.3.2-cvs-en_20120201-3 ]; then
	if [ ! -f gnugk-2.3.2-cvs-en_20120201-3.tar.bz2 ]; then
		wget http://files.tmc.enforta.net/mmsvc/v22/pkg/gnugk-2.3.2-cvs-en_20120201-3.tar.bz2
	fi
	tar xvjf gnugk-2.3.2-cvs-en_20120201-3.tar.bz2 || exit 1
fi
if [ -d gnugk-2.3.2-cvs-en_20120201-3 ]; then
	ln -svnf gnugk-2.3.2-cvs-en_20120201-3 gnugk
else
	exit 1
fi
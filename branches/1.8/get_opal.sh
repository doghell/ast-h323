[ -h opal ] && echo "Already exists" && exit
if [ ! -d opal-3.10.7 ]; then
	if [ ! -f opal-3.10.7.tar.bz2 ]; then
		wget http://downloads.sourceforge.net/project/opalvoip/v3.10%20Luyten/Stable%207/opal-3.10.7.tar.bz2 || exit 1
	fi
	tar xvjf opal-3.10.7.tar.bz2 || exit 1
fi
if [ -d opal-3.10.7 ]; then
	ln -svnf opal-3.10.7 opal
else
	exit 1
fi

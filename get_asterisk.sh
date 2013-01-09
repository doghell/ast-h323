[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-11.1.2 ]; then
	if [ ! -f asterisk-11.1.2.tar.gz ]; then
		wget http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-11.1.2.tar.gz || exit 1
	fi
	tar xvzf asterisk-11.1.2.tar.gz || exit 1
	rm -vf asterisk-11.1.2/configure
fi
if [ -d asterisk-11.1.2 ]; then
	ln -svnf asterisk-11.1.2 asterisk
else
	exit 1
fi

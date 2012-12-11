[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-11.1.0 ]; then
	if [ ! -f asterisk-11.1.0.tar.gz ]; then
		wget http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-11.1.0.tar.gz || exit 1
	fi
	tar xvzf asterisk-11.1.0.tar.gz || exit 1
	rm -vf asterisk-11.1.0/configure
fi
if [ -d asterisk-11.1.0 ]; then
	ln -svnf asterisk-11.1.0 asterisk
else
	exit 1
fi

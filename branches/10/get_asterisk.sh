[ -h asterisk ] && echo "Already exists" && exit
if [ ! -d asterisk-10.11.1 ]; then
	if [ ! -f asterisk-10.11.1.tar.gz ]; then
		wget http://downloads.asterisk.org/pub/telephony/asterisk/releases/asterisk-10.11.1.tar.gz || exit 1
	fi
	tar xvzf asterisk-10.11.1.tar.gz || exit 1
	rm -vf asterisk-10.11.1/configure
fi
if [ -d asterisk-10.11.1 ]; then
	ln -svnf asterisk-10.11.1 asterisk
else
	exit 1
fi

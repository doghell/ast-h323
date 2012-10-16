[ -h opensips ] && echo "Already exists" && exit
if [ ! -d opensips-1.8.1-tls ]; then
	if [ ! -f opensips-1.8.1_src.tar.gz ]; then
		wget http://opensips.org/pub/opensips/1.8.1/src/opensips-1.8.1_src.tar.gz || exit 1
	fi
	tar xvzf opensips-1.8.1_src.tar.gz || exit 1
fi
if [ -d opensips-1.8.1-tls ]; then
	ln -svnf opensips-1.8.1-tls opensips
else
	exit 1
fi

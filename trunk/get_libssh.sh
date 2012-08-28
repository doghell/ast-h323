[ -h libssh ] && echo "Already exists" && exit
if [ ! -d libssh-0.5.2 ]; then
	if [ ! -f libssh-0.5.2.tar.gz ]; then
		wget http://www.libssh.org/files/0.5/libssh-0.5.2.tar.gz || exit 1
	fi
	tar xvzf libssh-0.5.2.tar.gz || exit 1
fi
if [ -d libssh-0.5.2 ]; then
	ln -svnf libssh-0.5.2 libssh
else
	exit 1
fi

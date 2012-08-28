[ -h cmake ] && echo "Already exists" && exit
if [ ! -d cmake-2.8.9 ]; then
	if [ ! -f cmake-2.8.9.tar.gz ]; then
		wget http://www.cmake.org/files/v2.8/cmake-2.8.9.tar.gz || exit 1
	fi
	tar xvzf cmake-2.8.9.tar.gz || exit 1
fi
if [ -d cmake-2.8.9 ]; then
	ln -svnf cmake-2.8.9 cmake
else
	exit 1
fi

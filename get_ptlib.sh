[ -h ptlib ] && exit
if [ ! -f ptlib-2.10.5.tar.bz2 ]; then
	[ -d ptlib-2.10.5 ] && rm -vrf ptlib-2.10.5
	wget http://downloads.sourceforge.net/project/opalvoip/v3.10%20Luyten/Stable%205/ptlib-2.10.5.tar.bz2 && \
	tar xvjf ptlib-2.10.5.tar.bz2
fi
[ -d ptlib-2.10.5 ] && ln -svnf ptlib-2.10.5 ptlib

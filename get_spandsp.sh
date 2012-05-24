[ -h spandsp ] && exit
if [ ! -f spandsp-0.0.6pre20.tgz ]; then
	[ -d spandsp-0.0.6pre20 ] && rm -vrf spandsp-0.0.6pre20
	wget http://www.soft-switch.org/downloads/spandsp/spandsp-0.0.6pre20.tgz && \
	tar xvzf spandsp-0.0.6pre20.tgz && \
	mv -vf spandsp-0.0.6 spandsp-0.0.6pre20
fi
[ -d spandsp-0.0.6pre20 ] && ln -svnf spandsp-0.0.6pre20 spandsp

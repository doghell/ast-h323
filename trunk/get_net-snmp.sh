[ -h net-snmp ] && echo "Already exists" && exit
if [ ! -d net-snmp-5.7.1 ]; then
	if [ ! -f net-snmp-5.7.1.tar.gz ]; then
		wget http://downloads.sourceforge.net/project/net-snmp/net-snmp/5.7.1/net-snmp-5.7.1.tar.gz || exit 1
	fi
	tar xvzf net-snmp-5.7.1.tar.gz || exit 1
fi
if [ -d net-snmp-5.7.1 ]; then
	ln -svnf net-snmp-5.7.1 net-snmp
else
	exit 1
fi

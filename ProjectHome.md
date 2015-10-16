## Asterisk H.323 installation ##


### Main features ###
H323Plus library support (http://h323plus.org) instead of OpenH323 library.

T.38 support based on this patch - http://issues.asterisk.org/jira/browse/ASTERISK-17180

Avaya Communication Manager interoperability fixes, which make it possible to pass DTMF signals using RTP NTE ([RFC 2833](http://www.ietf.org/rfc/rfc2833.txt)).


### Project consists of ###
1. Patch set for original chan\_h323 by Jeremy McNamara, which makes it compatible with latest Asterisk versions. Currently **Asterisk 1.8, 10, 11, 12 and SVN trunk** versions are supported.

2. Download/build/install scripts which download, build and install Asterisk and all tools and libraries, required for H.323 support. Currently **SpanDSP 0.0.6pre21**, **PTLib 2.10** and **H323Plus 1.25** are used.


### Quick start guide ###
It is recommended to use a separate user account for installation (e.g. asterisk).
```
useradd asterisk
su - asterisk
```

To get patches and download/build/install scripts use:

for Asterisk 1.8.x.x:
```
svn checkout http://ast-h323.googlecode.com/svn/branches/1.8 ast-h323
```
for Asterisk 10.x.x:
```
svn checkout http://ast-h323.googlecode.com/svn/branches/10 ast-h323
```
for Asterisk 11.x.x:
```
svn checkout http://ast-h323.googlecode.com/svn/branches/11 ast-h323
```
for Asterisk 12.x.x:
```
svn checkout http://ast-h323.googlecode.com/svn/branches/12 ast-h323
```
for Asterisk SVN trunk:
```
svn checkout http://ast-h323.googlecode.com/svn/trunk/ ast-h323
```


To download, build and install all required tools, libraries and Asterisk itself use the following commands:
```
cd ast-h323
./auto-build.sh
```


All required files will be installed inside current user home directory. To run Asterisk use the following commands:
```
export LD_LIBRARY_PATH=~/lib
~/bin/asterisk -C ~/etc/asterisk.conf
```


To access Asterisk console use:
```
~/bin/asterisk -C ~/etc/asterisk.conf -r
```


### Testing ###
Tested on CentOS 5 and 6, Fedora Core 20, Ubuntu 12.04.

### Maintainer ###
Denis Kochmashev (d.kochmashev@gmail.com)

### Support forum ###
https://groups.google.com/forum/?hl=ru#!forum/ast-h323
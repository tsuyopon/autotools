hellocmd\_deb
==================

$B35MW(B
--------
hello$B%3%^%s%I$r%$%s%9%H!<%k$9$k$?$a$N%9%1%k%H%s(B
$B$5$i$K(Bdeb$B%Q%C%1!<%8$r:n@.$7$^$9(B

$BI,MW>r7o(B
-------------
$B%$%s%9%H!<%k$9$k$?$a$K$O0J2<$N%Q%C%1!<%8$,I,MW$G$9(B
```
 sudo apt-get install build-essential autoconf automake libtool libtool-doc \
 autotools-dev dpkg-dev dpkg dh-make debhelper devscripts fakeroot \
 xutils lintian pbuilder
```

deb$B%Q%C%1!<%8:n@.J}K!(B
------------

1. Clone this repository:

2. Execute Shell
```
$ ./CreateDeb.sh
```

3. Check Deb package
```
$ ls ./Debian/*
```

$B;29M(B
------------
    git clone https://github.com/gizero/autotools-skeleton.git

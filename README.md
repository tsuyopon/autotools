autotools
====

# $B35MW(B
Autotools$B$rMxMQ$7$?%Q%C%1!<%8:n@.%9%1%k%H%s$G$9(B

# $B%;%C%H%"%C%W(B
$B2<5-%Q%C%1!<%8$r%$%s%9%H!<%k$7$^$9(B
```
	autoconf
	automake
	libtool
	autoconf-doc
	libtool-doc
	build-essential
	libgtk2.0-dev
	dpkg-dev
	debhelper
	devscripts
	fakeroot
	lintian
	dh_make
	dpkg
```

# autotools$B$rMxMQ$7$?%Q%C%1!<%8%$%s%9%H!<%k$NN.$l(B
configure$B%9%/%j%W%H$r2<5-%3%^%s%I$G@8@.(B
```
$ autoreconf -iv
```

$B2<5-%3%^%s%I$G%Q%C%1!<%8%$%s%9%H!<%k$^$G9T$$$^$9(B
```
$ ./configure
$ make
$ sudo make install
```

# $B35MW(B
- hellocmd  
 - hello$B%3%^%s%IMQ$N(Bautotools template$B$rDs6!$7$^$9(B
- hellocmd_deb
 - hellocmd$B$K(Bdeb$B@8@.MQ$N%9%/%j%W%H(BCreateDeb.sh$B$,4^$^$l$F$$$^$9!#(Bdeb$B%Q%C%1!<%8$r<+F0@8@.$7$^$9(B
- hellolib
 - shared object$B@8@.MQ$N(Bautotools template$B$rDs6!$7$^$9!#(B
- hellolib_deb
 - hellolib$B$K(Bdeb$B@8@.MQ$N%9%/%j%W%H(BCreateDeb.sh$B$,4^$^$l$F$$$^$9!#(Bdeb$B%Q%C%1!<%8$r<+F0@8@.$7$^$9!#FC$K(Bhellocmd_deb$B$H$OJQ$o$j$^$;$s!#(B


# $B%i%$%V%i%jL>>N$r;XDj$7$^$9(B
lib_LTLIBRARIES     = libhello.la

# $B%i%$%V%i%j$,@8@.$5$l$k%=!<%9%U%!%$%k$r;XDj$7$^$9!#(B
# lib_LTLIBRARIES$B$G;XDj$5$l$?%i%$%V%i%jL>>N$+$iJQ?tL>$r(Bprefix$B$H$7$F$,7hDj$5$l$F$$$^$9!#(B
libhello_la_SOURCES = hellolib.cpp hellolib/print.cpp

# X:Y:Z  Y >= X >= Z$B$G$J$1$l$P$J$i$J$$$i$7$$(B
libhello_la_LDFLAGS = -module -shared -version-info 2:3:1

# $B:#2s@8@.$9$k%i%$%V%i%j$O;29M$N$?$a$K!"8N0U$K(Bmath$B%i%$%V%i%j$rMxMQ$9$k$h$&$K$7$F$$$^$9(B
libhello_la_LIBADD  = -lm

# $B%P%$%J%j%3%^%s%I$r3JG<$9$k(B
bin_PROGRAMS      = testhello
testhello_SOURCES = testhello.cpp
testhello_LDADD   = libhello.la



AC_PREREQ([2.61])
AC_INIT([hellolib], [1.0], [azarashi@example.com])
AM_INIT_AUTOMAKE

AC_PROG_MAKE_SET
AC_PROG_CXX
AC_LANG(C++)

CXXFLAGS="-std=c++11 -fPIC"

AC_CONFIG_MACRO_DIR([m4])

LT_PREREQ([2.2])
LT_INIT([dlopen shared])

AC_CONFIG_FILES([Makefile include/Makefile src/Makefile])

AC_OUTPUT


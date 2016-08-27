# ライブラリ名称を指定します
lib_LTLIBRARIES     = libhello.la

# ライブラリが生成されるソースファイルを指定します。
# lib_LTLIBRARIESで指定されたライブラリ名称から変数名をprefixとしてが決定されています。
libhello_la_SOURCES = hellolib.cpp hellolib/print.cpp

# X:Y:Z  Y >= X >= Zでなければならないらしい
libhello_la_LDFLAGS = -module -shared -version-info 2:3:1

# 今回生成するライブラリは参考のために、故意にmathライブラリを利用するようにしています
libhello_la_LIBADD  = -lm

# バイナリコマンドを格納する
bin_PROGRAMS      = testhello
testhello_SOURCES = testhello.cpp
testhello_LDADD   = libhello.la


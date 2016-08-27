# パスを指定してパッケージに含めるヘッダファイルを指定する
pkgincludedir = $(includedir)/hellolib

# 上の変数 XXXXXdirで指定したら、XXXXX_HEADERSとして指定する
pkginclude_HEADERS = hellolib.h hellolib/print.h

# ビルドには必要だがパッケージに含めないヘッダファイルとして扱います
# ヘッダファイルを見られたくないような場合に有効です
noinst_HEADERS = notinclude.h


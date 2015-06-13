hellolib
=====

# 概要
以下のサンプルスケルトンです
 - shared objectを生成します
 - ライブラリを利用したコマンドを格納します
 - 必要なincludeファイルのみをサーバに配置します

パッケージをインストールするとヘッダファイルもインストールされているので、
パッケージ中に含まれるライブラリを用いてビルドすることができるようになります。

## インストール
```bash
$ autoreconf -vfi
$ ./configure
$ make
$ sudo make install
```

/usr/local/libや/usr/local/binなどにインストールされます

# クリーンナップ
```
sudo sh cleanup.sh
```

# アンインストール
```
sudo make uninstall
```


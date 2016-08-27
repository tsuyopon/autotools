hellocmd\_rpm
==================

# 概要
--------
helloコマンドをインストールするためのスケルトン
さらにrpmパッケージを作成します

# 必要条件
-------------
autotoolsで必要なパッケージ(親ディレクトリのREADME.md参照)の他にrpm-buildをインストールしてください。

# rpmパッケージ作成方法
------------
下記コマンドを実行するだけでrpmまでを生成します。
CreateTgzPkg.shはautotoolsを利用してtar.gzを生成し、buildrpm.shはtar.gzを利用してrpmを生成するスクリプトです。
```
$ ./CreateTgzPkg.sh
$ ./buildrpm.sh
```

実行が終わると以下のパスにrpmが生成されます。
```
$ ls rpmbuild/RPMS/x86_64/hellocmd-1.0.0-1.fc17.x86_64.rpm    // 例
```


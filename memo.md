```access.log
66.249.73.135 - - [20/May/2015:21:05:11 +0
66.249.73.135 - - [20/May/2015:21:05:11 +0
66.249.73.135 - - [20/May/2015:21:05:11 +0
66.249.73.135 - - [20/May/2015:21:05:11 +0
11.111.11.111 - - [20/May/2015:21:05:11 +0
22.222.22.222 - - [20/May/2015:21:05:11 +0
66.249.73.135 - - [20/May/2015:21:05:11 +0
66.249.73.135 - - [20/May/2015:21:05:11 +0
```

## awkコマンド
```sh
# $0は行全てを表す
$ awk '{print $0}' access.log
```

```
# 結果
66.249.73.135 - - [20/May/2015:21:05:11 +0
66.249.73.135 - - [20/May/2015:21:05:11 +0
66.249.73.135 - - [20/May/2015:21:05:11 +0
66.249.73.135 - - [20/May/2015:21:05:11 +0
11.111.11.111 - - [20/May/2015:21:05:11 +0
22.222.22.222 - - [20/May/2015:21:05:11 +0
66.249.73.135 - - [20/May/2015:21:05:11 +0
66.249.73.135 - - [20/May/2015:21:05:11 +0
```



```sh
$ awk '{print $1}' access.log
```

```
# 結果
66.249.73.135
66.249.73.135
66.249.73.135
66.249.73.135
11.111.11.111
22.222.22.222
66.249.73.135
66.249.73.135
```

## 重複する行をカウントする

```sh
$ sort ファイル名 | uniq -c
```

先にソートしておかないと正しく重複をカウントすることができない


## sortのオプション

```sh
$ sort -r ファイル
```
逆順でソートする


# 4: 	"Tokyo": can't serve web file
## curlして返ってこなかったらiptableを見る
```sh
$ iptable -L
```

curlしても何も返ってこない場合ネットワークがブロックされている可能性が高いので、iptableの設定を見る必要がある。


## 403forbiddenが出た場合
参照するファイルの所有権を変更する必要があるが、参照するサーバーのシステムユーザーに権限があれば十分

```sh
# ダメな例
$ chmod 644 /var/www/html/index.html
# 良い例
$ chown www-data: /var/www/html/index.html
```

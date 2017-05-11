ruby-twitter-oauth
==================

TwitterのOAuth認証を実行してアクセストークンを取得する

- twitter-oauth.rb: CONSUMER_KEYとCONSUMER_SECRETを渡して、アクセストークンを取得する。
- 途中でopen URLを実行し、アクセストークンを取得したいアカウントでログインする。
- Consumer KeyとConsumer Secretはhttps://apps.twitter.com/で確認できる。 

## 実行環境

- Ruby

## インストール方法


```
bundle install --path vendor/bundle
```

## 使用方法

アクセストークンの取得。


```
./twitter-oauth.rb <CONSUMER_KEY> <CONSUMER_SECRET>

```

サンプルクライアントの実行。

```
cp _twitter-oauth-client.rb twitter-oauth-client.rb 
# CONSUMER_KEY、CONSUMER_SECRET、ACCESS_TOKEN、ACCESS_TOKEN_SECRET編集
./twitter-oauth-client.rb 
```


## ライセンス

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

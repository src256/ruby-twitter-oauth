#!/usr/bin/env ruby
# coding: utf-8
# http://d.hatena.ne.jp/shibason/20090802/1249204953 より
# twitter-oauth.rb <CONSUMER_KEY> <CONSUMER_SECRET> で実行
# 途中でopen URLを実行しアクセストークンを取得したいアカウントでログインする

require 'rubygems'
require "bundler/setup"
require 'oauth'

# CONSUMER_KEYとCONSUMER_SECRETを引数で渡す
consumer_key = ARGV.shift
consumer_secret = ARGV.shift

if consumer_key.nil? || consumer_secret.nil?
  puts "Usage: #{$0} <CONSUMER_KEY> <CONSUMER_SECRET>"
  exit(1)
end

consumer = OAuth::Consumer.new(
  consumer_key,
  consumer_secret,
  :site => 'https://api.twitter.com/'
)

request_token = consumer.get_request_token

# ブラウザでURLにアクセス
puts "open #{request_token.authorize_url}"

# 表示されたコードを入力
print "Input OAuth Verifier: "
oauth_verifier = gets.chomp.strip

access_token = request_token.get_access_token(
  :oauth_verifier => oauth_verifier
)

puts "Access token: #{access_token.token}"
puts "Access token secret: #{access_token.secret}"




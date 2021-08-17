# Sendai.rb ポケモン図鑑を作ろうプロジェクト

こちらは仙台のRubyコミュニティである[Sendai.rb](https://sendairb.connpass.com/)のイベント中に実装したソースコードを管理するためのリポジトリです。

このアプリケーションの実装を進めている[イベント](https://sendairb.connpass.com/event/)は毎月第二金曜の夜を基本の開催日として定期的に開催しています。
ご興味のある方はぜひご参加ください😊

## セットアップ手順
基本的なRails環境に加えて、npmがインストールされていることを前提とします。

```console
cd <REPOSITORY_ROOT>

bundle install
npm install --save-dev

## マイグレーション実行
rails db:migrate

## マスタデータ投入
rails db:seed

## サーバ起動
rails server
```
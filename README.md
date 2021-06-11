# re3-book
# アプリケーションの概要
読書の習慣化と本から得た知識を定着を図るアプリケーションです。つまり本を読んでも得た知識をすぐに忘れてしまったり、積読状態になってしまう本をなくすことがこのアプリの目的です。

## 読書の習慣化
読書の習慣化を身につけるために、メンタルマップの作成をします。
メンタルマップとは自分の人生の目標や行動を箇条書きにして視覚化したものです。本アプリでは本を読む前に「本を読む理由」、「本を読んで自分はどのようになりたいか」などを明確にしておくことにより、読書をするモチベーションを上げる効果があります。また読書のモチベーションが下がった時にメンタルマップを振り返ることにより、やる気を取り戻すことができます。この効果を利用し、読書の習慣化を図ります。

## 本から得た知識を定着させる
本アプリでは本から得た情報を知識に残すため①キュリオシティ・ギャップの利用、②要約読みを行います。
①キュリオシティ・ギャップとは「自分が知っている知識」と「本に書かれた自分が知らない知識」の差を意識することで好奇心を刺激し、知識が記憶に残りやすくするものです。
②要約読みは各章ごとの内容を短く要約することにより、知識の定着を図る方法です。自分の言葉で本の内容を誰かに説明するつもりで言語化することで、本に書いてある情報をより記憶に残りやすくすることが期待できます。


# デプロイ後のURL
https://re3-book.herokuapp.com/
# テスト用アカウント
- ニックネーム：user1
- メールアドレス：test@mail
- パスワード：11111a

## 利用方法
1.トップページから画面右上にあるログインをクリックするとログインページに遷移する。  
2.上記のテスト用アカウントでログインするとトップページに遷移する。  
3.ログイン状態でトップページに遷移するとヘッダーの下に「本を登録する」文字が現れる。  
4.本を登録するをクリックすると、本新規登録画面に遷移する。  
5.各フォームを入力し、登録ボタンを押すとトップページに遷移し、登録した本が表示されるようになる。  
6.表示されている本をクリックすると本の詳細ページに遷移する。  
7.本詳細ページの「読む前の準備」をクリックすると、本の準備を登録するページへ遷移する。  
8.各フォーム（メンタルマップとキュリオシティ・ギャップの項目）を記入し、登録を押す。  
9.再度本詳細ページに遷移する。  
10.本の要約を登録する場合は本詳細ページの「要約をする」をクリックすると要約を登録するページに遷移する。  
11.フォームに要約を記入し、登録を押す。

# 目指した課題解決
本から知識を会得しようとしている人たちが効率よく読書を行い、読書を習慣化できること
# 洗い出した要件
- ユーザー管理機能
- 新規本登録・編集・消去機能
- 読書前準備機能
- 読書要約機能
- 瞑想機能
- 達成度合い確認機能
- 質問読み機能
- 読書振り返り機能

# 画面
## トップページ
[![Image from Gyazo](https://i.gyazo.com/c3d00666c5e8526f49f7cbc9edca3cc1.jpg)](https://gyazo.com/c3d00666c5e8526f49f7cbc9edca3cc1)
## 新規登録画面
[![Image from Gyazo](https://i.gyazo.com/d791723271d776681b0cb23f16d26a5b.jpg)](https://gyazo.com/d791723271d776681b0cb23f16d26a5b)
## 新規 本 登録画面
[![Image from Gyazo](https://i.gyazo.com/57e0258f6a00fd1d2a96d60438f8453b.jpg)](https://gyazo.com/57e0258f6a00fd1d2a96d60438f8453b)
## ブック詳細画面
[![Image from Gyazo](https://i.gyazo.com/fadd515d5c7761857b7c48a7ca94f5c8.jpg)](https://gyazo.com/fadd515d5c7761857b7c48a7ca94f5c8)
## 読書前準備機能
[![Image from Gyazo](https://i.gyazo.com/453a62950d44714d6f5db698ae7c5f08.jpg)](https://gyazo.com/453a62950d44714d6f5db698ae7c5f08)

## 要約投稿画面
[![Image from Gyazo](https://i.gyazo.com/3740b920cd9f5105bb7c488bcf7f5f29.jpg)](https://gyazo.com/3740b920cd9f5105bb7c488bcf7f5f29)

# 実装予定の機能
- 瞑想機能
- 達成度合い確認機能
- 質問読み機能
- 読書振り返り機能
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/d219912ca6e5031748d32a207ab66f99.png)](https://gyazo.com/d219912ca6e5031748d32a207ab66f99)


# re3-bookのテーブル設計
##  booksテーブル
| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------- |
|book_title          | string     | null: false                     |
|author              | string     | null: false                     |
|total_page          | integer    | null: false                     |
|read_page           | integer    |                                 |
|user                | references | null: false , foreign_key: true |

### Association
belongs_to :user
has_one :preparation
has_one :output



## Preparations
| Column             | Type        | Options                  |
| ------------------ | ----------- | ------------------------ |
| reason             | text        | null: false              |
| get_ability        | text        | null: false              |
| status             | text        | null: false              |
| prior_knowledge    | text        | null: false              |
| unknown            | text        | null: false              |
| book               | references  | null: false              |

### Association
belongs_to :book


## outputs テーブル
| Column             | Type        | Options                  |
| ------------------ | ----------- | -------------------------|
| text               | text        | null: false              |
| text               | text        | null: false              |
| book               | references  | null: false              |

### Association
belongs_to :book

# ローカルでの動作方法
1.git clone https://github.com/kaz-taka-1/rebook
2.bundle install
3.yarn install

# 使用言語・技術
- ruby
- Ruby
- Ruby on Rails
- HTML/CSS
- SQL
- JavaScript




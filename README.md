# re3-book
# アプリケーションの概要
読書の習慣化と本から得た知識を定着を図るアプリケーションです。つまり本を読んでも本から得た知識をすぐに忘れてしまったり、積読状態になってしまう本をなくそうというのがコンセプトのアプリです。
このアプリケーションを

# 使用言語・技術

# デプロイ後のURL

# テス用トアカウント


## DEMO

## トップ画面

## ユーザー新規画面

## ブック詳細画面

## 要約投稿画面

## 





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



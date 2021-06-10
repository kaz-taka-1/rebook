# README

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



## outputs テーブル
| Column             | Type        | Options                  |
| ------------------ | ----------- | -------------------------|
| text               | text        | null: false              |
| text               | text        | null: false              |
| book               | references  | null: false              |

### Association
belongs_to :user
has_one :purchase



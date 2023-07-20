# README
# テーブル設計

## users
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| email              | string     | null: false, unique: true      |
| password           | string     | null: false                    |
| encrypted_password | string     | null: false                    |
| name               | string     | null: false                    |
| profile            | text       | null: false                    |
| occupation         | text       | null: false                    |
| position           | text       | null: false                    |

### Association
- has_many :prototypes
- has_many :comments

## prototypes
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| catch_copy         | text       | null: false                    |
| concept            | text       | null: false                    |
| user_id            | references | null: false, foreign_key: true |

### Association
- has_many :comments
- belongs_to :user

## comments
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| comment            | text       | null: false                    |
| user_id            | references | null: false, foreign_key: true |
| prototypes_id      | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :prototype

# テーブル設計

## usersテーブル
| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | not null    |
| password   | string | not null    |
| name       | string | not null    |
| profile    | text   | not null    |
| occupation | text   | not null    |
| position   | text   | not null    |

- has_many:prototypes
- has_many:comments

## prototypesテーブル
| Column     | Type        | Options  |
| ---------- | ----------- | -------- |
| title      | string      | not null |
| catch_copy | text        | not null |
| concept    | text        | not null |
| user       | references  |          |

- has_many:comments
- belongs_to:user

## commentsテーブル
| Column    | Type       | Options  |
| --------- | ---------- | -------- |
| text      | text       | not null |
| user      | references |          |
| prototype | references |          |

- belongs_to:user
- belongs_to:prototype
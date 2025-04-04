# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

userテーブル

| Column          | Type    | Options                     |
| --------------- | ------- | --------------------------- |
| id              | bigint  | primary key                 |
| login_id        | string  | null: false, unique, index  |一度作成したら削除後も再利用不可
| password_digest | string  | null: false                 |パスワード（has_secure_password使用）
| role            | integer | default: 0, null: false     |0: サブユーザー, 1: マスターユーザー
| name            | string  | null: false                 |職員の名前
| kana_name       | string  | null: false                 |職員のカナ名
| gender          | integer | null: false                 |	0: 男性, 1: 女性, 2: その他（enum使用）
| email           | string  | null: false, unique         |メールアドレス
| phone_number    | string  | null: false                 |電話番号
| profession_id   | integer | null: false                 |医師・看護師・事務員などの識別ID（enum使用）
| active          | boolean | default: true, null: false  |有効: true, 無効: false



### Association
- belongs_to :group
- belongs_to :user








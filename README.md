# TODOMap DB設計

## listsテーブル
|Column|Type|Options|
|------|----|-------|
|message|string|null:false|
|time|string|
### Association
  belong_to :user

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false,unique: true|
|password|string|null: false|
### Assocition
  has_many :lists

# TODOMap DB設計

## listsテーブル
|Column|Type|Options|
|------|----|-------|
|place|string|null:false|
|message|string|null:false|
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

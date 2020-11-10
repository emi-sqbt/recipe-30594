# README

# アプリ名
recipe-30594

## 概要
レシピ検索をレシピ名の他、食材の分類・調理方法・季節での検索を可能とする

## 制作背景（意図）
厨房現場において献立作成時、食材の分類・調理方法・季節を考慮して献立が作成されます。その為、レシピ名だげでなく項目ごと、または項目を組み合わせ検索出来ることにより、作業効率が上がる。
前職の経験を踏まえ、この機能があったら良いなと考えていた内容のアプケーションの開発を始めました。

#### DEMO

## 実装予定内容
・検索機能
・一覧表示機能
・詳細表示機能
・レシピ入力
・保存
・編集
・削除


## DB設計
### テーブル設計
#### recipe テーブル

| Column             | Type     | Options     |
| ------------------ | -------- | ----------- |
| name               | string   | null: false |
| category_id        | integer  | null: false |
| cooking_method_id  | integer  | null: false |
| season_id          | integer  | null: false |
| foodstuff          | text     | null: false |
| process            | text     | null: false |

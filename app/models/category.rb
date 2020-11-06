class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '牛肉' },
    { id: 3, name: '豚肉' },
    { id: 4, name: '鶏肉' },
    { id: 5, name: '魚' },
    { id: 6, name: '卵' },
    { id: 7, name: '野菜' },
    { id: 8, name: '乳製品' },
    { id: 9, name: '大豆製品' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :recipes
  end

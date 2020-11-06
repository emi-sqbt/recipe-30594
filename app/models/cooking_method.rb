class CookingMethod < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '焼く' },
    { id: 3, name: '煮る' },
    { id: 4, name: '揚げる' },
    { id: 5, name: '蒸す' },
    { id: 6, name: '炒める' },
    { id: 7, name: '和える' },
    { id: 8, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :recipes
end

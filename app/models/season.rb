class Season < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '通年' },
    { id: 3, name: '春' },
    { id: 4, name: '夏' },
    { id: 5, name: '秋' },
    { id: 6, name: '冬' },
  ]

  include ActiveHash::Associations
  has_many :recipes
end
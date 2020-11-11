class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :cooking_method
  belongs_to_active_hash :season

  has_one_attached :image

  with_options presence: true do
    validates :name, :category_id, :cooking_method_id, :season_id, :foodstuff, :process, :image
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id, :cooking_method_id, :season_id
  end

end

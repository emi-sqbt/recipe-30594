class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :cooking_method
  belongs_to :season
  has_one_attached :image

  with_options presence: true do
    validates :name, :category_id, :cooking_method_id, :season_id, :foodstuff, :process, :image
  end

  with_options numericality: { other_than: 1 } do
    validates :category, :cooking_method, :season
  end

end

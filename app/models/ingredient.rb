class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  validates :name, :description, :presence => true

  mount_uploader :thumb, ThumbUploader

end

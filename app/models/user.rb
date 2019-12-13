class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :users_recipes
  has_many :recipes, through:  :users_recipes
  has_many :users_ingredients
  has_many :ingredients,  through: :users_ingredients
end

class Ingredient < ApplicationRecord
  has_many :pairings
  has_many :styles, through: :pairings
  has_many :recipes
  validates :name, presence: true, uniqueness: true
end

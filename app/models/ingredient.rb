class Ingredient < ApplicationRecord
  has_many :pairings
  has_many :styles, through: :pairings
  validates :name, presence: true, uniqueness: true
end

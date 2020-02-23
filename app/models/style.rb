class Style < ApplicationRecord
  has_many :pairings
  has_many :ingredients, through: :pairings
  has_many :recipes, through: :pairings
  validates :name, presence: true, uniqueness: true
end

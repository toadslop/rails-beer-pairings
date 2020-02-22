class Recipe < ApplicationRecord
  belongs_to :ingredient
  has_many :pairings, through: :ingredient
  has_many :styles, through: :pairings
  validates :title, presence: true
end

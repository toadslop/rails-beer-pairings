class Style < ApplicationRecord
  has_many :pairings
  has_many :ingredients, through: :pairings
  validates :name, presence: true, uniqueness: true
end

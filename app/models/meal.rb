class Meal < ApplicationRecord
  belongs_to :style
  belongs_to :recipe
  validates :style, :recipe, presence: true
end

class Pairing < ApplicationRecord
  belongs_to :style
  belongs_to :ingredient
  validates_associated :style, :ingredient
end

class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, presence: true, uniqueness: true
  validates :like, presence: true, numericality: { only_integer: true }
end

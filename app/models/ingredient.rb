class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses
  # has_many :cocktails, through: :doses
end



  # should not be able to destroy self if has dose children (FAILED - 15)

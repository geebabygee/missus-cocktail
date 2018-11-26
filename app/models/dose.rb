class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  # validates :cocktail, uniqueness: { scope: :ingredient}
  validates :description, presence: true
 end

 # uniqueness: { scope: :ingredient}

#a dose only exists for a cocktail and ingredient combo - so if u delete it you delete it, you don't
#delete the ingredient itself....for the routes! - See shallow nesting in slides



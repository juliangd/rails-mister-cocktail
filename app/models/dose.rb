class Dose < ApplicationRecord
  validates :description, presence: true
  belongs_to :ingredient
  belongs_to :cocktail
  validates :ingredient_id, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient_id }
end

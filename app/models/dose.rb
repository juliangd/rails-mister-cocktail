class Dose < ApplicationRecord
  validates :description, uniqueness: true, presence: true
  belongs_to :ingredient
  belongs_to :cocktail
  validates :ingredient_id, presence: true
  validates :cocktail_id, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  end

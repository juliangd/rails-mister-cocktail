class Dose < ApplicationRecord
  validates :description, uniqueness: true, presence: true
  belongs_to :ingredient
  belongs_to :cocktail
  validates :ingredient_id, presence: true
  # validates :cocktail, :inclusion => { ingredient_id }
  # validates :cocktail, scope: :ingredients
  # validates :cocktail, scope { :ingredient }
  validates :cocktail, uniqueness: { :scope => :ingredient_id }

  end

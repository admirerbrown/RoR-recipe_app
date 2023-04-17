class RecipeFood < ApplicationRecord
  belongs_to :recipe, foreign_key: :recipe_id
  belongs_to :food, foreign_key: :food_id
end
validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }

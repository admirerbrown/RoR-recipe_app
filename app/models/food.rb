class Food < ApplicationRecord
  has_many :recipe_foods, foreign_key: :food_id
  belongs_to :user

  validates :name, presence: true, length: { maximum: 250 }
  validates :user_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end

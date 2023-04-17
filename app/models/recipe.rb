class Recipe < ApplicationRecord
  has_many :recipe_foods, foreign_key: :recipe_id
  belongs_to :user
end

validates :name, presence: true, length: { maximum: 250 }
validates :description, presence: true, length: { maximum: 400 }

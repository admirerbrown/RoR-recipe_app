class Recipe < ApplicationRecord
  has_many :recipe_foods, foreign_key: :recipe_id
  belongs_to :user

  validates :name, presence: true, length: { maximum: 250 }
  validates :description, presence: true, length: { maximum: 400 }
  validates :cooking_time, presence: true, length: { maximum: 250 }
  validates :preparation_time, presence: true, length: { maximum: 250 }
  validates :user_id, presence: true
end

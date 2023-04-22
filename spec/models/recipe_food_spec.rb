require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  let(:user) { User.new(name: 'Test User') }
  let(:food) { Food.new(name: 'Test Food', user_id: user.id) }
  let(:recipe) { Recipe.new(name: 'Test Recipe', preparation_time: 10, cooking_time: 20, user_id: user.id) }

  describe 'validations' do
    it 'requires a user' do
      recipe_food = RecipeFood.new(food_id: food.id, recipe_id: recipe.id)
      expect(recipe_food).not_to be_valid
    end

    it 'requires a food' do
      recipe_food = RecipeFood.new(food_id: user.id, recipe_id: recipe.id)
      expect(recipe_food).not_to be_valid
    end

    it 'requires a recipe' do
      recipe_food = RecipeFood.new(recipe_id: user.id, food_id: food.id)
      expect(recipe_food).not_to be_valid
    end
  end
end

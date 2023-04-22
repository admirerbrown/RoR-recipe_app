require 'rails_helper'

RSpec.describe Recipe, type: :model do
  context 'creating a recipe' do
    it 'has the correct attributes' do
      user = User.new(name: 'John Doe', email: 'john@example.com', password: 'password')
      recipe = Recipe.new(name: 'Spaghetti Carbonara', preparation_time: '10 minutes', cooking_time: '20 minutes',
                          description: 'A classic Italian dish', user:)
      expect(recipe.name).to eq('Spaghetti Carbonara')
      expect(recipe.preparation_time).to eq('10 minutes')
      expect(recipe.cooking_time).to eq('20 minutes')
      expect(recipe.description).to eq('A classic Italian dish')
      expect(recipe.user).to eq(user)
    end
  end
end

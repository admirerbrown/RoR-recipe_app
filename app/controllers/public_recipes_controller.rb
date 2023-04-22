class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.where(public: true).includes(recipe_foods: [:food], user: {}).order(created_at: :desc)
  end
end

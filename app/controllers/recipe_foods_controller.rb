class RecipeFoodsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @foods = Food.all
    @recipe_food = RecipeFood.new
  end

  def create
    recipe_id = params[:recipe_id]
    foods = params[:add_food] || []
    quantities = params[:quantity] || []

    foods.each_with_index do |food_id, _index|
      quantity = quantities[food_id.to_s].to_i

      # Check if a recipe_food record already exists with the same recipe_id and food_id
      @recipe_food = RecipeFood.find_or_initialize_by(recipe_id:, food_id:)

      # If the record already exists, update its quantity attribute
      if @recipe_food.persisted?
        @recipe_food.update(quantity: @recipe_food.quantity + quantity)
      else
        # Otherwise, create a new recipe_food record with the given attributes
        @recipe_food.quantity = quantity

        if @recipe_food.save
          flash[:notice] = 'Recipe added successfully!'
        else
          flash[:alert] = "Couldn't add recipe. Please try again."
          render :new, status: :unprocessable_entity
        end
      end
    end

    redirect_to "/recipes/#{recipe_id}"
  end

  def destroy
    @recipe_food = RecipeFood.includes(:food).find_by(id: params[:id], recipe_id: params[:recipe_id])

    if @recipe_food&.destroy
      flash[:success] = 'ingredient Removed!'
    else
      flash[:danger] = 'Sorry Failed To Remove Ingredient!'
    end
    redirect_to request.referrer
  end
end

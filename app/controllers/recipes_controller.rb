class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def show
    @ingredients = RecipeFood.includes(:food).where(recipe_id: params[:id])
    @recipe = current_user.recipes.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def update_public
    @recipe = Recipe.find(params[:id])

    if @recipe.update(public: params[:recipe][:public] == '1')
      flash[:notice] = 'Recipe is now Public'
    else
      flash[:danger] = 'Sorry Failed To make Recipe Public!'
    end

    redirect_to request.referrer
  end

  def create
    preparation_time_number = params[:recipe][:preparation_time_number]
    preparation_time_unit = params[:recipe][:preparation_time_unit]

    cooking_time_number = params[:recipe][:cooking_time_number]
    cooking_time_unit = params[:recipe][:cooking_time_unit]

    preparation_time = "#{preparation_time_number} #{preparation_time_unit}"
    cooking_time = "#{cooking_time_number} #{cooking_time_unit}"

    @recipe = Recipe.new(recipe_params)
    @recipe.preparation_time = preparation_time
    @recipe.cooking_time = cooking_time
    @recipe.user_id = current_user.id

    if @recipe.save

      flash[:notice] = 'Recipe Added Successfully!'
      redirect_to '/recipes'
    else
      flash[:alert] = "Couln't Add Recipe Please Try Again!"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe = current_user.recipes.find(params[:id])

    if @recipe&.destroy
      flash[:success] = 'Recipe Removed!'
    else
      flash[:danger] = 'Sorry Failed To Remove Recipe!'
    end
    redirect_to request.referrer
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description)
  end
end

class FoodsController < ApplicationController
  def index
    @foods = current_user.foods
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.user_id = current_user.id

    if @food.save
      flash[:notice] = 'Food Added successfully!'
      redirect_to '/foods'
    else
      flash[:alert] = "Couln't Add Food Please Try Again!"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @food = current_user.foods.find(params[:id])

    if @food&.destroy
      flash[:success] = 'Food deleted!'
    else
      flash[:danger] = 'Sorry Failed To Delete Food!'
    end
    redirect_to request.referrer
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  end
end

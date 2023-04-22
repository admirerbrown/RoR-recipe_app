require 'rails_helper'

RSpec.describe Food, type: :model do
  let(:user) { User.new(name: 'John Doe', email: 'john@example.com', password: 'password') }

  describe 'validations' do
    it 'is invalid with a negative price' do
      food = Food.new(name: 'Apple Test', measurement_unit: 'grams', price: -10, quantity: 40, user_id: user.id)
      expect(food).to_not be_valid
      expect(food.errors[:price]).to include('must be greater than or equal to 0')
    end

    it 'is invalid with a negative quantity' do
      food = Food.new(name: 'Apple Test', measurement_unit: 'grams', price: 10, quantity: -40, user_id: user.id)
      expect(food).to_not be_valid
      expect(food.errors[:quantity]).to include('must be greater than or equal to 0')
    end

    it 'is invalid without a user_id' do
      food = Food.new(name: 'Apple Test', measurement_unit: 'grams', price: 10, quantity: 30, user_id: nil)
      expect(food).to_not be_valid
      expect(food.errors[:user_id]).to include("can't be blank")
    end
  end
end

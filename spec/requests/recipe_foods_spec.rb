require 'rails_helper'

RSpec.describe RecipeFoodsController, type: :routing do
  describe 'routing' do
    it 'routes to #create' do
      expect(post: '/recipe_foods').to route_to('recipe_foods#create')
    end

    it 'routes to #destroy' do
      expect(delete: '/recipe_foods/1').to route_to('recipe_foods#destroy', id: '1')
    end
  end
end

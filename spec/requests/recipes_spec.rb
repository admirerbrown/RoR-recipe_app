require 'rails_helper'

RSpec.describe RecipesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/recipes').to route_to('recipes#index')
    end

    it 'routes to #new' do
      expect(get: '/recipes/new').to route_to('recipes#new')
    end

    it 'routes to #show' do
      expect(get: '/recipes/1').to route_to('recipes#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/recipes').to route_to('recipes#create')
    end

    it 'routes to #destroy' do
      expect(delete: '/recipes/1').to route_to('recipes#destroy', id: '1')
    end
  end
end

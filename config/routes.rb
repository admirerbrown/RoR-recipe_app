Rails.application.routes.draw do
  devise_for :users
  root to: redirect('/users/sign_in')
  # get 'recipes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "recipe#index"
  
  # resources :recipes, only: [:index, :show,:create, :new, :destroy], path: 'recipes'
  # config/routes.rb
patch 'recipes/:id/update_public', to: 'recipes#update_public', as: 'recipe_update_public'
get '/public_recipes', to: 'public_recipes#index', as: 'public_recipes'


resources :recipes, only: [:index, :show, :create, :new, :destroy], path: 'recipes' do
  patch :update_public, on: :member
end

  resources :foods, only: [:index, :create, :new, :destroy], path: 'foods'
  resources :recipe_foods, only: [ :create, :new, :destroy], path: 'recipe_foods'
  end

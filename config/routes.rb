Rails.application.routes.draw do
  devise_for :users
  root to: redirect('/users/sign_in')
  # get 'recipes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "recipe#index"
  
  resources :recipes, only: [:index, :show], path: 'recipes'

  end

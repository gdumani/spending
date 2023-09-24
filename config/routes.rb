Rails.application.routes.draw do
  resources :groups
  resources :expenses
  devise_for :users
  resources :expenses_groups, only: [:create, :destroy]

  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
end

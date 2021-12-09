Rails.application.routes.draw do
  resources :items
  resources :base_items
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "application#index"
  # Defines the root path route ("/")
  # root "articles#index"
end

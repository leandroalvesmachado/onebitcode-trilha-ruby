Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root "home#index"
  resources :articles
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "posts#index"
  
  get 'simple/hello', defaults: { format: 'json' }
  get 'simple', to: 'simple#hello', defaults: { format: 'json' }
  get "simple", controller: "simples", action: "hello"

  get 'user/show/:id', to: 'user#show', as: 'user_show', defaults: { format: 'json' }

  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # resources :posts
  resources :posts do
    member do
      get 'comments', to: 'posts#comments'
      get 'new_comment', to: 'posts#new_comment'
      post 'create_comment', to: 'posts#create_comment'
    end
  end

  get "example/time_sensitive", to: "example#time_sensitive_action"
end

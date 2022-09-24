Rails.application.routes.draw do
  resources :bookings
  resources :clients, only:[:create, :show]
  resources :models, only:[:create, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'

  #login route
  post '/login', to: 'sessions#create'

  #stay logged in 
  get "/me", to: 'sessions#show'

  #logged out route
  delete "/logout", to: 'sessions#destroy'

  get '*path',
  to: 'fallback#index',
  constraints: ->(req) { !req.xhr? && req.format.html? }
end

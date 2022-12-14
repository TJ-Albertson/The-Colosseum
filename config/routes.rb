Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "movies#search"

  get "/info", to: "info#index"
  get "/movies", to: "movies#search"
  get "/profile", to: "users#show"
  get "/users", to: "users#search"

  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :thumbs
end

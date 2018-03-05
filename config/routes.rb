Rails.application.routes.draw do
  resources :tags
  resources :votes
  resources :comments
  resources :artworks
  resources :users
  resources :sessions
  root 'application#index'
  get '/login', to: 'sessions#new', as: 'login'
  post '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

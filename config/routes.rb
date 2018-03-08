Rails.application.routes.draw do
  resources :tags
  resources :comments
  resources :artworks
  resources :users
  resources :sessions
  resources :searches
  root 'application#index'
  post '/comments/:id', to: 'comments#destroy'
  get '/login', to: 'sessions#new', as: 'login'
  post '/logout', to: 'sessions#destroy', as: 'logout'
  post '/sessions', to: 'sessions#create', as: 'create_session'
  post '/like', to: 'votes#like', as: 'like'
  post '/dislike', to: 'votes#dislike', as: 'dislike'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :groups
  resources :activities
  resources :leaderboard
  root 'users#index'

  get '/users', to: 'users#new'
  get '/sessions', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post '/users', to: 'users#create'
  get '/dashboard', to: 'users#show'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

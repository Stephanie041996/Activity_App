Rails.application.routes.draw do
  resources :activities
  
  root 'users#index'

  get '/users', to: 'users#new'
  get '/sessions', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post '/users', to: 'users#create'
  get '/dashboard', to: 'activities#index'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

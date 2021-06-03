Rails.application.routes.draw do
  root 'users#index'
  get '/sessions', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/dashboard', to: 'users#show'
 
  resources :users
  resources :groups
  resources :activities
  resources :leaderboards, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

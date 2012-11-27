Brickonthewall::Application.routes.draw do

  match 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/facebook', as: :facebook_auth

  resources :users, only: [:index, :create] 
  root to: 'users#index'
end

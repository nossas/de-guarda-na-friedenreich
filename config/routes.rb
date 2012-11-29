Brickonthewall::Application.routes.draw do

  match 'auth/:provider/callback', to: 'sessions#create'
  resources :users, only: [:index, :create] 

  get 'auth/facebook', as: :facebook_auth
  get '/notify', to: 'users#notify'

  root to: 'users#index'
end

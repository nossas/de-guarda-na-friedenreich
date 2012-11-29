Brickonthewall::Application.routes.draw do

  match 'auth/:provider/callback', to: 'sessions#create'
  resources :users, only: [:index, :create] 

  get 'auth/facebook', as: :facebook_auth
  get '/notify', to: 'users#notify', as: :notify
  get '/list',  to: 'users#list', as: :list
  root to: 'users#index'
end

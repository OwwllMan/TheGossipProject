Rails.application.routes.draw do
  root 'statique#accueil'
  get'/home', to: 'statique#accueil'
  get '/index', to: 'statique#index'

  resources :gossips
end